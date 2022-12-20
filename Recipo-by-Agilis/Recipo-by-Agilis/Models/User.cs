using System.ComponentModel.DataAnnotations;
using Identity.Models;
using Microsoft.AspNetCore.Identity;

using Ordering.Core.Entities.Base;
using Recipo_by_Agilis.Models.Interfaces;

namespace Recipo_by_Agilis.Models;

public class User: IUserRepository
{
    private readonly UserManager<AppUser> _userManager;
    private readonly SignInManager<AppUser> _signInManager;
    private readonly IConfiguration _config;

    public User(
        UserManager<AppUser> userManager,
        SignInManager<AppUser> signInManager,
        IConfiguration config)
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

    public Task<string?> LogInAsync()
    {
        throw new NotImplementedException();
    }

    public List<string> GetRolesForUser(AppUser user)
    {
        throw new NotImplementedException();
    }

    public Task LogOutAsync()
    {
        throw new NotImplementedException();
    }

    public Task<AppUser> GetByMail(string email)
    {
        throw new NotImplementedException();
    }


    async Task<IdentityResult> IUserRepository.RegisterAsync(Register register)
    {
        var user = new AppUser()
        {
            Email = register.Email,
            UserName = register.Email
        };
        return await _userManager.CreateAsync(user, register.Password);
    }
}