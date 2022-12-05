using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Identity;

namespace Recipo_byAgilis.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public ICollection<Recipe> Recipes { get; set; }
        public int SubscriptionId { get; set; }
        public Subscription Subscription { get; set; }

    }
}