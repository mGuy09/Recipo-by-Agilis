namespace Recipo_byAgilis.Models;

public class IngredientInRecipe
{
    public int Id { get; set; }
    public int IngredientId { get; set; }
    public Ingredient Ingredient { get; set; }
    public int RecipeId { get; set; }
    public Recipe Recipe { get; set; }
}