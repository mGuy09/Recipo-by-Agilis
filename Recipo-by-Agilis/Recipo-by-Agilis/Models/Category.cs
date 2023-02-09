namespace Recipo_by_Agilis.Models;

public class Category: BaseEntity, ITranslate
{
    public string ImageLink { get; set; }

    public string Translate { get; set; }
}