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

        public UsersController(IUserService userService)
        {
            _userService = userService;
        }

        // /api/auth/register
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
    }
}
