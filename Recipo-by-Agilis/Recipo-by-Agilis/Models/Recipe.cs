namespace Recipo_by_Agilis.Models;

public class Recipe:BaseEntity, ITranslate
{
    public string Steps { get; set; }
    public bool IsPremium { get; set; }
    public string ImageLink { get; set; }


    public string Translate { get; set; }
}