using System.ComponentModel.DataAnnotations;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Azure.Identity;
using Identity.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.IdentityModel.JsonWebTokens;
using Microsoft.IdentityModel.Tokens;
using Ordering.Core.Entities.Base;
using Recipo_by_Agilis.Models.Interfaces;
using JwtRegisteredClaimNames = Microsoft.IdentityModel.JsonWebTokens.JwtRegisteredClaimNames;

namespace Recipo_by_Agilis.Models;

public class User: IUserRepository
{
    private readonly UserManager<AppUser> _userManager;
    private readonly SignInManager<AppUser> _signInManager;
    private readonly IConfiguration _config;
    
    //public string UserName { get; set; }

    //public string Email { get; set; }

    //public string Password { get; set; }
    

    public User(UserManager<AppUser> userManager, SignInManager<AppUser> signInManager, IConfiguration config)
    {
        _userManager = userManager;
        _signInManager = signInManager;
        _config = config;
        
    }

    public async Task<IdentityResult> RegisterAsync(Register register)
    {
        var user = new AppUser()
        {
            Email = register.Email,
            UserName = register.Email
        };
        return await _userManager.CreateAsync(user, register.Password);
    }

    public async Task<string?> LogInAsync(SignIn signIn)
    {
        var result = await _signInManager.PasswordSignInAsync(signIn.Email, signIn.Password, false, false);

        if (!result.Succeeded)
        {
            return null;
        }

        AppUser user = await _userManager.FindByEmailAsync(signIn.Email);
        var roles = await _userManager.GetRolesAsync(user);

        var authorClaims = new List<Claim>
        {
            new Claim(ClaimTypes.Email, signIn.Email),
            new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
        };

        foreach (var role in roles)
        {
            var roleClaim = new Claim(ClaimTypes.Role, role);
            authorClaims.Add(roleClaim);
        }
        var authKey = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(_config["JWT:Secret"]));

        var token = new JwtSecurityToken(
            issuer: _config["JWT:ValidIuser"],
            audience: _config["JWT:ValidAudience"],
            //expires: DateTime.Now.AddDays(1),
            expires: DateTime.Now.AddMinutes(15),
            claims: authorClaims,
            signingCredentials: new SigningCredentials(authKey, SecurityAlgorithms.HmacSha256Signature));

        return new JwtSecurityTokenHandler().WriteToken(token);
    }

    public List<string> GetRolesForUser(AppUser user)
    {
        return  _userManager.GetRolesAsync(user).Result.ToList();
    }

    public async Task LogOutAsync()
    {
        _signInManager.SignOutAsync().Wait();
    }

    public Task<AppUser> GetByMail(string email)
    {
        throw new NotImplementedException();
    }

}