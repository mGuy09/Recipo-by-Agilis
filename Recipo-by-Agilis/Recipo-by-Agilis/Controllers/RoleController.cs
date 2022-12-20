using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using System.Security.Claims;
using System.Text;
using Identity.Models;
using Microsoft.Extensions.DependencyInjection;

namespace Recipo_by_Agilis.Controllers;

public class RoleController
{
    public IConfiguration Configuration { get; }

    public RoleController(IConfiguration configuration)
    {
        Configuration=configuration;
    }

    private async Task CreateRoles(ServiceProvider service)
    {
        IdentityResult roleResult;
        var roleManager = service.GetRequiredService<RoleManager<IdentityRole>>();
        var userManager = service.GetRequiredService<UserManager<AppUser>>();

        string[] roleNames = { "Admin", "User" };
        foreach (var role in roleNames)
        {
            var roleExists = await roleManager.RoleExistsAsync(role);
            if (!roleExists)
            {
                roleResult = await roleManager.CreateAsync(new IdentityRole(role));
                if (role == "Admin")
                {
                    if (roleResult.Succeeded)
                    {
                        var roleRes = roleManager.Roles.First(x => x.Name == "Admin");
                        await roleManager.AddClaimAsync(roleRes, new Claim(ClaimTypes.Role, "Admin"));
                    }
                }
            }
        }

        var user = new AppUser()
        {
            UserName = "admin@admin.admin",
            Email = "admin@admin.admin",
        };
        string userPwd = "Admin.1234";
        await CreateUser(user, userPwd, service);
    }

    private async Task CreateUser(AppUser user, string pass, IServiceProvider service)
    {
        var roleManager = service.GetRequiredService<RoleManager<IdentityRole>>();
        var userManager = service.GetRequiredService<UserManager<AppUser>>();
        var checkUser = await userManager.FindByEmailAsync(user.Email);
        if (checkUser == null)
        {
            var createUser = await userManager.CreateAsync(user, pass);
            if (createUser.Succeeded)
            {
                await userManager.AddToRoleAsync(user, "Admin");
            }
        }
    }


}