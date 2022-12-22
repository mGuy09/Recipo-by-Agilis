namespace Recipo_by_Agilis.Models;

public class Subscription:BaseEntity
{
    public string Description { get; set; }
    public bool IsPremium { get; set; }
}