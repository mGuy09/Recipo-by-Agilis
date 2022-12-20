using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Recipo_by_Agilis.Models;
using Recipo_by_Agilis.Models.Interfaces;
using static Recipo_by_Agilis.Models.Interfaces.IUserRepository;

namespace Recipo_by_Agilis.Controllers;

[Route("user")]
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
    //public object AddNewUser(User u)
    //{
    //    try
    //    {
            
    //        User user = new User();
    //        user.Id = u.Id;
    //        user.UserName = u.UserName;
    //        user.Email = u.Email;
    //        user.Password = u.Password;
    //        user.EmailConfirmed = u.EmailConfirmed;
    //        _context.Users.Add(user);
    //        _context.SaveChanges();
    //        return new Response()
    //        {
    //            Status = "success",
    //            Message = "user added"
    //        };
    //    }
    //    catch (Exception e)
    //    {
    //        return new Response()
    //        {
    //            Status = "failed to add user"
    //        };
    //    }

    //}
}