using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Recipo_by_Agilis.Models;

namespace Recipo_by_Agilis.Controllers;

[Authorize]
[Route("api/[controller]")]
[ApiController]
public class FavoritesController: ControllerBase
{
    private readonly RecipoContext _context;
    private readonly UserManager<IdentityUser> _userManager;

    public FavoritesController(RecipoContext context, UserManager<IdentityUser> userManager)
    {
        _context = context;
        _userManager = userManager;
    }


    [HttpGet("{id}")]

    public async Task<ActionResult<Favorites>> GetFavorites(int id)
    {
        var favorites = await _context.Favorites.FindAsync(id);

        if (favorites == null)
        {
            return NotFound();
        }

        return favorites;
    }

    [HttpPost]
    public async Task<ActionResult<Favorites>> PostFavorites(Favorites favorites)
    {
        _context.Favorites.Add(favorites);
        await _context.SaveChangesAsync();

        return CreatedAtAction("GetFavorites", new { id = favorites.Id }, favorites);
    }

    [HttpDelete("{id}")]
    public async Task<IActionResult> DeleteFavorite(int id)
    {
        var favorite = await _context.Favorites.FindAsync(id);
        if (favorite == null)
        {
            return NotFound();
        }

        _context.Favorites.Remove(favorite);
        await _context.SaveChangesAsync();

        return NoContent();
    }
}