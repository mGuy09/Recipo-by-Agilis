using Microsoft.AspNetCore.Identity;
using Recipo_by_Agilis.Models;
using System.Linq;
using IdentityUser = Microsoft.AspNetCore.Identity.IdentityUser;

namespace Recipo_by_Agilis.Services;

public class UserService : IUserService
{
    private UserManager<IdentityUser> _userManager;

    public UserService(UserManager<IdentityUser> usermanager)
    {
        _userManager = usermanager;
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
            UserName = model.Email
        };

        var result = await _userManager.CreateAsync(identityUser, model.Password);
        if (result.Succeeded)
        {
            return new UserManagerResponse { Message = "User created.", IsSuccess = true };
        }

        return new UserManagerResponse
            { Message = "User was not created", IsSuccess = false, Errors = result.Errors.Select(e => e.Description) };
    }
}