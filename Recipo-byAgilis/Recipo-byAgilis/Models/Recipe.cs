namespace Recipo_byAgilis.Models;

public class Recipe
{
    public int Id { get; set; }
    public string Title { get; set; }
    public string Steps { get; set; }
    public ICollection<Ingredient> Ingredients { get; set; }
}