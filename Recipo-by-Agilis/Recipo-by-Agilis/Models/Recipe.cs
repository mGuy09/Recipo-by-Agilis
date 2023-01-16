namespace Recipo_by_Agilis.Models;

public class Recipe:BaseEntity
{
    public string Steps { get; set; }
    public string IsPremium { get; set; }
}