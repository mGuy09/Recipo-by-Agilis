using System.ComponentModel.DataAnnotations;

namespace Recipo_by_Agilis.Models;

public class Register
{
    [Required]
    public string UserName { get; set; }

    [Required]
    [StringLength(50)]
    [EmailAddress]
    public string Email { get; set; }

    [Required]
    [StringLength(50, MinimumLength = 5)]
    public string Password { get; set; }

    [Required]
    [StringLength(50, MinimumLength = 5)]
    public string ConfirmPassword { get; set; }

    
}