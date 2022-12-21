using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace Recipo_by_Agilis.Models;

public class Register: IdentityUser
{
    private readonly RecipoContext _context;

    [Required(ErrorMessage = "Please enter a username")]
    public string UserName { get; set; }

    [Required]
    [RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", ErrorMessage = "E-mail is not valid")]
    [EmailAddress]
    public string Email { get; set; }

    
    
    [Required(ErrorMessage = "Please enter a password")]
    public string Password { get; set; }

    [Required]
    [Compare("ConfirmPassword")]
    public string ConfirmPassword { get; set; }

    public Register(string userName, string email, string password)
    {
        UserName = userName;
        Email = email;
        Password = password;
        ConfirmPassword = password;
    }
    //public object AddNewUser(Register register, User user)
    //{
    //    try
    //    {
            
    //        _context.Users.Add(register);
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

    //    //}
    //}
}