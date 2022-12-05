namespace Recipo_byAgilis.Models;

public class Subscription
{
    public int Id { get; set; }
    public string SubscriptionType { get; set; }
    public float Price { get; set; }
    public string Currency { get; set; }
    public DateTime ExpirationDate { get; set; }
}