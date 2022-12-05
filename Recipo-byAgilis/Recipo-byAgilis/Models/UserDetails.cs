using Microsoft.AspNetCore.Routing.Constraints;

namespace Recipo_byAgilis.Models;

public class UserDetails
{
    public int Id { get; set; }
    public string UserId { get; set; }
    public ApplicationUser User { get; set; }
    public Subscription Subscription { get; set; }
    public int SubscriptionId { get; set; }
    public DateTime CreationDate { get; set; }
}