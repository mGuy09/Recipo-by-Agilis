using Identity.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace Recipo_by_Agilis.Models;

public class RecipoContext : IdentityDbContext<AppUser>
{
    public RecipoContext(DbContextOptions<RecipoContext> options) : base(options) { }


    public DbSet<Ingredient> Ingredients { get; set; }
    public DbSet<Recipe> Recipes { get; set; }
    public DbSet<IngredientInRecipe> IngredientsInRecipes { get; set; }
    public DbSet<Category> Category { get; set; }
    public DbSet<Subscription> Subscription { get; set; }

    public DbSet<User> User { get; set; }

    protected override async void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);
        //var gamesCategory = new Category { Id = 1, Name = "Games" };
    //    var webCategory = new Category { Id = 2, Name = "WebApplications" };
    //    var escapeCategory = new Category { Id = 3, Name = "EscapeRooms" };
    //    modelBuilder.Entity<Category>().HasData(gamesCategory);
    //    modelBuilder.Entity<Category>().HasData(webCategory);
    //    modelBuilder.Entity<Category>().HasData(escapeCategory);

    modelBuilder.Entity<Ingredient>();
    modelBuilder.Entity<Recipe>();
    modelBuilder.Entity<IngredientInRecipe>();
    modelBuilder.Entity<Category>();
    modelBuilder.Entity<Subscription>();
    modelBuilder.Entity<User>();

    // ---aici trebuie vazut ce initiem. cel mai probabil ce emai sus
    // ..avand in vedere ca programul e mai destept :))---
    }
}