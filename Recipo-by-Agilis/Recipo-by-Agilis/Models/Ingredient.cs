using System.ComponentModel;


namespace Recipo_by_Agilis.Models;

public class Ingredient:BaseEntity, ITranslate
{
    public int CategoryId { get; set; }


    public string Translate { get; set; }
}