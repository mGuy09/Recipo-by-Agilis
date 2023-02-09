namespace Recipo_by_Agilis.Models;

public class Subscription:BaseEntity, ITranslate
{

    public int Price { get; set; }

    public string Translate { get; set; }
}