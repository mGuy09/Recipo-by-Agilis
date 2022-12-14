using System.ComponentModel.DataAnnotations;

namespace Recipo_by_Agilis.Models;

public class User
{
    [Required(ErrorMessage = "Please enter a username")]
    public string UserName { get; set; }
    [Required(ErrorMessage = "Please enter an email")]
    public string Email { get; set; }
    [Required(ErrorMessage = "Please enter a password")]
    public string Password { get; set; }
    
}