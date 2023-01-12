using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity;
using Recipo_by_Agilis.Models;
using Recipo_by_Agilis.Services;

namespace Recipo_by_Agilis.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private IUserService _userService;
        private readonly IConfiguration _configuration;
        private UserManager<IdentityUser> _userManager;

        public UsersController(IUserService userService, IConfiguration configuration, UserManager<IdentityUser> userManager)
        {
            _userService = userService;
            _configuration = configuration;
            _userManager = userManager;
        }

        // /api/auth/register
        [AllowAnonymous]
        [HttpPost("Register")]
        public async Task<IActionResult> RegisterAsync([FromBody] Register model)
        {
            if (ModelState.IsValid)
            {
                var result = await _userService.RegisterUserAsync(model);
                if (result.IsSuccess) return Ok(result); //status code 200 
                return BadRequest(result);
            }

            return BadRequest("Some properties are not valid"); //status code 400. smth from the client side
        }

        // /api/auth/login
        [AllowAnonymous]
        [HttpPost("Login")]
        public async Task<IActionResult> LoginAsync([FromBody] Login model)
        {
            if (ModelState.IsValid)
            {
                var result = await _userService.LoginUserAsync(model);
                if (result.IsSuccess)
                {
                    Response.Cookies.Append("Token", result.Token, new CookieOptions() { HttpOnly = true, SameSite = SameSiteMode.Strict });
                    Response.Cookies.Append("Username", result.User.UserName, new CookieOptions() { HttpOnly = true, SameSite = SameSiteMode.Strict });
                    return Ok();
                }
                return BadRequest();
            }
            
            return BadRequest("Some properties are not valid");
        }
        [Authorize]
        [HttpGet("GetUser")]
        public async Task<IActionResult> GetCurrentUser()
        {
            
                var result = _userManager.FindByNameAsync(User.Identity.Name);
                return Ok(result); 
            

            
        }
        
    }



}
