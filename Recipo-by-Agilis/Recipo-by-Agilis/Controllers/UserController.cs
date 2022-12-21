using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Recipo_by_Agilis.Models;
using Recipo_by_Agilis.Models.Interfaces;
using static Recipo_by_Agilis.Models.Interfaces.IUserRepository;

namespace Recipo_by_Agilis.Controllers;

[Route("User")]
[ApiController]
public class UserController : ControllerBase
{
    private readonly IUserRepository _userRepository;
    


    public UserController(IUserRepository userRepository)
    {
        _userRepository = userRepository;

    }

    [HttpPost]
    [Route("register")]

    public async Task<IActionResult> Register([FromBody] Register register)
    {
        var response = await _userRepository.RegisterAsync(register);

        if (response.Succeeded)
        {
            return Ok(response.Succeeded);
        }

        return Unauthorized("not gonna work");
    }

    [HttpPost]
    [Route("LogIn")]
    public async Task<IActionResult> LogIn([FromBody] SignIn signIn)
    {
        var logInResopnse = await _userRepository.LogInAsync(signIn);
        if (string.IsNullOrEmpty(logInResopnse))
        {
            return Unauthorized("LogIn Error");
        }

        var user = _userRepository.GetByMail(signIn.Email).Result;
        var roles = _userRepository.GetRolesForUser(user);

        bool isAdmin = roles.Any(x => x == "Admin");

        return Ok(new SignIn { Email = signIn.Email, Token = logInResopnse, IsAdmin = isAdmin });
    }

    [HttpGet]
    [Route("LogOut")]
    public async Task<IActionResult> LogOut()
    {
        _userRepository.LogOutAsync().Wait();
        return Ok();
    }


}