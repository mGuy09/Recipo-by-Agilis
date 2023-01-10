
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace Recipo_by_Agilis.Models;

public class RecipoContext : IdentityDbContext
{
    public RecipoContext(DbContextOptions options) : base(options) { }


    public DbSet<Ingredient> Ingredients { get; set; }
    public DbSet<Recipe> Recipes { get; set; }
    public DbSet<IngredientInRecipe> IngredientsInRecipes { get; set; }
    public DbSet<Category> Category { get; set; }
    public DbSet<Subscription> Subscription { get; set; }

    public DbSet<User> Users { get; set; }

    public DbSet<UserSubscription> UserSubscriptions { get; set; }


}