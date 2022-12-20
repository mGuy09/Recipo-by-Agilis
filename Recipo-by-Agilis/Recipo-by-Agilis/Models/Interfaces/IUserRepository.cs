using Identity.Models;
using Microsoft.AspNet.Identity;
using IdentityResult = Microsoft.AspNetCore.Identity.IdentityResult;

namespace Recipo_by_Agilis.Models.Interfaces;

    public interface IUserRepository
    {
        Task<IdentityResult> RegisterAsync(Register register);
        Task<string?> LogInAsync();
        public List<string> GetRolesForUser(AppUser user);
        Task LogOutAsync();
        public Task<AppUser> GetByMail(string email);
    }
