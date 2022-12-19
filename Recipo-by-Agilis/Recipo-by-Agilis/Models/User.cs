using System.ComponentModel.DataAnnotations;
using Ordering.Core.Entities.Base;

namespace Recipo_by_Agilis.Models;

public class User: BaseEntity
{
    [Required(ErrorMessage = "Please enter a username")]
    public string UserName { get; set; }
    [Required]
    [RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", ErrorMessage = "E-mail is not valid")]
    public string Email { get; set; }
    [Required(ErrorMessage = "Please enter a password")]
    public string Password { get; set; }
    
}