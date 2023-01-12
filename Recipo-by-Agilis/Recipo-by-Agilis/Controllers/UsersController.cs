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
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly UserManager<IdentityUser> _userManager;

        public UsersController(IUserService userService, IConfiguration configuration, RoleManager<IdentityRole> roleManager, UserManager<IdentityUser> userManager)
        {
            _userService = userService;
            _configuration = configuration;
            _roleManager = roleManager;
            _userManager = userManager;
        }

        // /api/auth/register
        [HttpPost("Register")]
        public async Task<IActionResult> RegisterAsync([FromBody] Register model)
        {
            if (ModelState.IsValid)
            {
                var result = await _userService.RegisterUserAsync(model);
                if (result.IsSuccess) 
                {
                   
                    return Ok(result); //status code 200 
                }
                return BadRequest(result);
            }

            return BadRequest("Some properties are not valid"); //status code 400. smth from the client side
        }

        // /api/auth/login
        [HttpPost("Login")]
        public async Task<IActionResult> LoginAsync([FromBody] Login model)
        {
            if (ModelState.IsValid)
            {
                var result = await _userService.LoginUserAsync(model);
                if (result.IsSuccess)
                    return Ok(result);
                return BadRequest(result);
            }

            return BadRequest("Some properties are not valid");
        }

        
    }



}
