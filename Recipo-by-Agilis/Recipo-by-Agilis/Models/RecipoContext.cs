using Microsoft.EntityFrameworkCore;
using Recipo_by_Agilis.Models;

namespace Recipo_by_Agilis.Models;

public class RecipoContext : DbContext
{
    public RecipoContext(DbContextOptions<RecipoContext> options) : base(options)
    {
        
    }

    public DbSet<Ingredient> Ingredients { get; set; }
    public DbSet<Recipe> Recipes { get; set; }
    public DbSet<IngredientInRecipe> IngredientsInRecipes { get; set; }
    public DbSet<Recipo_by_Agilis.Models.Category> Category { get; set; }
}