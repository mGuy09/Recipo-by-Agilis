using Microsoft.AspNetCore.Mvc;
using Recipo_by_Agilis.Models;

namespace Recipo_by_Agilis.Logic;

public class ShoppingCartActions : IDisposable
{
    public int ShoppingCartId { get; set; }
    private readonly IConfiguration _configuration;
    private readonly RecipoContext _context;

    public ShoppingCartActions(IConfiguration configuration, RecipoContext context)
    {
        _configuration = configuration;
        _context = context;
    }

    public const string CartSessionKey = "CartId";

    public void AddToCart(int id)
    {
        //retrieve the product from the database if no cart item exists
        ShoppingCartId = GetCartId();
        var cartItem = _context.Subscription.SingleOrDefault(c => c.Id == ShoppingCartId && c.Id == id);
        if (cartItem == null)
        {
            cartItem = new Subscription()
                { Id = id, Name = _context.Subscription.SingleOrDefault(n => n.Id == id)?.Name };
            _context.Subscription.Add(cartItem);
        }
        else
        {
            //if the item is not in the cart add one qtity of it
            cartItem.Quantity = 1;
        }



    }

    public void Dispose()
    {
        throw new NotImplementedException();
    }

    public int GetCartId()
    {
        

        return 1;
    }

}