
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Recipo_by_Agilis.Models;

namespace Recipo_by_Agilis.Controllers
{
    //[Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class RecipesController : ControllerBase
    {
        private readonly RecipoContext _context;
        private readonly  UserManager<IdentityUser> _userManager;

        public RecipesController(RecipoContext context, UserManager<IdentityUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        // GET: api/Recipes
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Recipe>>> GetRecipes()
        {
            return await _context.Recipes.ToListAsync();
        }

        // GET: api/Recipes/5
        [HttpGet("{id}")]
        public async Task<ActionResult<RecipeDto>> GetRecipe(int id)
        {
            var recipe = await _context.Recipes.FindAsync(id);

            if (recipe == null)
            {
                return NotFound();
            }

            var RecipeDto = new RecipeDto()
            {
                Id = recipe.Id,
                ImageLink = recipe.ImageLink,
                IsPremium = recipe.IsPremium,
                Name = recipe.Name,
                Steps = recipe.Steps,
                IngredientIds = _context.IngredientsInRecipes.AsEnumerable().Where(i => i.RecipeId == recipe.Id)
                    .Select(i => i.IngredientId).ToList(),
                IngredientQuantity = _context.IngredientsInRecipes.AsEnumerable().Where(i => i.RecipeId == recipe.Id).Select(i => new IngredientDto()
                    {
                        IngredientId = i.IngredientId,
                        Quantity = i.Quantity,
                        QuantityType = i.QuantityType
                    }).ToList()

            };

            return RecipeDto;
        }

        // PUT: api/Recipes/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutRecipe(int id, Recipe recipe)
        {
            if (id != recipe.Id)
            {
                return BadRequest();
            }

            _context.Entry(recipe).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RecipeExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Recipes
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Recipe>> PostRecipe(RecipeDto recipe)
        {
           var a = _context.Recipes.Add(new Recipe()
            {
                Name = recipe.Name,
                ImageLink = recipe.ImageLink,
                IsPremium = false,
                Steps = recipe.Steps
            });
           await _context.SaveChangesAsync();
            recipe.IngredientQuantity.ForEach(i =>
            {
                _context.IngredientsInRecipes.Add(new IngredientInRecipe()
                {
                    IngredientId = i.IngredientId,
                    Quantity = i.Quantity,
                    QuantityType = i.QuantityType,
                    RecipeId = a.Entity.Id /*_context.Recipes.AsEnumerable().Where(item => item.Name == recipe.Name).Select(item => item.Id).First()*/
                });
                
            });
            await _context.SaveChangesAsync();
            _context.RecipeByUser.Add(new RecipeByUser()
            {
                RecipeId = a.Entity.Id,
                UserId = User.Identity.Name
            });
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetRecipe", new { id = recipe.Id }, recipe);
        }

        // DELETE: api/Recipes/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteRecipe(int id)
        {
            var recipe = await _context.Recipes.FindAsync(id);
            if (recipe == null)
            {
                return NotFound();
            }

            _context.Recipes.Remove(recipe);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool RecipeExists(int id)
        {
            return _context.Recipes.Any(e => e.Id == id);
        }


        [HttpPost("IngredientsinRecipe")]
        public async Task<IActionResult> GetRecipesByIngredients(List<Ingredient> data)
        {

            var Recipes = _context.Recipes.AsEnumerable().Select(e => new RecipeDto
            {
                Id = e.Id,
                IngredientIds = _context.IngredientsInRecipes.AsEnumerable().Where(i => i.RecipeId == e.Id).Select(i=> i.IngredientId).ToList(),
                IsPremium = e.IsPremium,
                Name = e.Name,
                Steps = e.Steps,
                ImageLink = e.ImageLink,
            });
            var filteredRecipes = Recipes.Where(e => data.Any(i => e.IngredientIds.Any(x => x == i.Id))).ToList();

            return Ok(new
            {
                data = filteredRecipes
            });
        }
    }
}
