using System.IdentityModel.Tokens.Jwt;
using Microsoft.AspNetCore.Identity;
using System.Security.Claims;
using System.Text;
using Microsoft.IdentityModel.Tokens;
using Recipo_by_Agilis.Models;
using IdentityUser = Microsoft.AspNetCore.Identity.IdentityUser;

namespace Recipo_by_Agilis.Services;

public class UserService : IUserService
{
    private UserManager<IdentityUser> _userManager;
    private IConfiguration _configuration;

    public UserService(UserManager<IdentityUser> usermanager, IConfiguration configuration)
    {
        _userManager = usermanager;
        _configuration = configuration;
    }

    public async Task<UserManagerResponse> RegisterUserAsync(Register model)
    {
        if (model == null)
            throw new NullReferenceException("register model is null");

        if (model.Password != model.ConfirmPassword)
            return new UserManagerResponse() { Message = "Passwords don't match", IsSuccess = false };

        var identityUser = new IdentityUser
        {
            Email = model.Email,
            UserName = model.UserName
        };

        var result = await _userManager.CreateAsync(identityUser, model.Password);
        if (result.Succeeded)
        {
            //TO do: send a confirmation email
            return new UserManagerResponse { Message = "User created.", IsSuccess = true };
        }

        return new UserManagerResponse
            { Message = "User was not created", IsSuccess = false, Errors = result.Errors.Select(e => e.Description) };
    }

    public async Task<UserManagerResponse> LoginUserAsync(Login model)
    {
        var user = await _userManager.FindByEmailAsync(model.Email);
        if (user == null)
        {
            return new UserManagerResponse()
            {
                Message = "No user is registered with this email.",
                IsSuccess = false,
            };
        }

        var result = await _userManager.CheckPasswordAsync(user, model.Password);
        
        if (!result)
            return new UserManagerResponse()
            {
                Message = "Invalid password.",
                IsSuccess = false,
            };

        var claims = new[]
        {
            new Claim(ClaimTypes.Email, user.Email),
            new Claim(ClaimTypes.Name, user.UserName)
        };

        var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["AuthSettings:Key"]));

        var token = new JwtSecurityToken(
            issuer:null,
            audience: null,
            claims: claims,
            expires: DateTime.Now.AddDays(30),
            signingCredentials: new SigningCredentials(key,SecurityAlgorithms.HmacSha256));
       
        string tokenAsString = new JwtSecurityTokenHandler().WriteToken(token);

        return new UserManagerResponse()
        {
            Message = "Successfully logged in",
            IsSuccess = true,
            User = user,
            Token = tokenAsString
        };
    }

}