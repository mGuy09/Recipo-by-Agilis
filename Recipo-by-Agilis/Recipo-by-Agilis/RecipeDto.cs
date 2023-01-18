using Recipo_by_Agilis.Models;

namespace Recipo_by_Agilis;

public class RecipeDto
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Steps { get; set; }
    public string IsPremium { get; set; }
    public List<int> IngredientIds { get; set; }
}