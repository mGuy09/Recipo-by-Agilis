using System.Runtime.InteropServices.ComTypes;

using Microsoft.AspNetCore.Hosting.Server;
using Microsoft.AspNetCore.Hosting.Server.Features;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis.CSharp.Syntax;
using Newtonsoft.Json;
using Recipo_by_Agilis.Models;
using Stripe.Checkout;

namespace Recipo_by_Agilis.Controllers;


[ApiController]
[Route("api/[controller]")]
[ApiExplorerSettings(IgnoreApi = true)]
public class CheckoutController : ControllerBase
{
    //    private readonly IConfiguration _configuration;
    //    private static string s_wasmClientURL = string.Empty;

    //    public CheckoutController(IConfiguration configuration)
    //    {
    //        _configuration = configuration;
    //    }

    //    [HttpPost]
    //    public async Task<IActionResult> CheckoutOrder([FromBody] Subscription subscription,
    //        [FromServices] IServiceProvider serviceProvider)
    //    {
    //        var referer = Request.Headers.Referer;
    //        s_wasmClientURL = referer[0];
    //        //build the url to whch the client will be redirected after paying.
    //        var server = serviceProvider.GetRequiredService<IServer>();
    //        var serverAddressesFeature = server.Features.Get<IServerAddressesFeature>();
    //        string? thisisApiurl = null;
    //        if (serverAddressesFeature != null)
    //        {
    //            thisisApiurl = serverAddressesFeature.Addresses.FirstOrDefault();
    //        }

    //        if (thisisApiurl != null)
    //        {
    //            var sessionId = await Checkout(subscription, thisisApiurl);
    //            var pubkey = _configuration["Stripe:PubKey"];
    //            var checkoutOrderResponse = new CheckoutResponse()
    //            {
    //               SessionId = sessionId,
    //               PubKey = pubkey
    //            };
    //            return Ok(checkoutOrderResponse);
    //        }
    //        else
    //        {
    //            return StatusCode(500);
    //        }
    //    }

    //    [NonAction]
    //    public async Task<string> Checkout(Subscription subscription, string thisApiURL)
    //    {
    //        //create payment flow from item to cart. gets sent to Stripe Api

    //        var options = new SessionCreateOptions()
    //        {
    //            SuccessUrl = $"{thisApiURL}/checkout/success?sessionId" + "{CHECKOUT_SESSION_ID}", //Customer paid
    //            CancelUrl = s_wasmClientURL + "failed", //checkout canceled
    //            PaymentMethodTypes = new List<string>
    //            {
    //                "card"
    //            },
    //            LineItems = new List<SessionLineItemOptions>
    //            {
    //                new()
    //                {
    //                    PriceData = new SessionLineItemPriceDataOptions
    //                    {
    //                        UnitAmount = subscription.Price,
    //                        Currency = "€",
    //                        ProductData = new SessionLineItemPriceDataProductDataOptions
    //                        {
    //                            Name = subscription.Name
    //                        },
    //                    },
    //                    Quantity = 1,
    //                },
    //            },
    //            Mode = "payment" //one-time payment. Stripe supports recurring 'subscription' payment
    //        };
    //        var service = new SessionService();
    //        var session = await service.CreateAsync(options);

    //        return session.Id;
    //    }

    //    [HttpGet("success")]
    //    //ex: http://localhost:3000/Checkout/success/sessionId=si_545445155

    //    public ActionResult CheckOutOk(string sessionId)
    //    {
    //        var sessionService = new SessionService();
    //        var session = sessionService.Get(sessionId);

    //        //here u save the order and the customer details to DB
    //        var total = session.AmountTotal.Value;
    //        var userEmail = session.CustomerEmail;

    //        return Redirect(s_wasmClientURL + "success");
    //    }


    [HttpGet]
public ActionResult Checkout()
{
    var domain = "http://localhost:3000/Subscriptions";
    var option = new SessionCreateOptions()
    {
        
        LineItems = new List<SessionLineItemOptions>()
            {
                new SessionLineItemOptions()
                {
                    
                    Price = "price_1MRaKeKQcG3PiOeCA9uzhWHz",
                    Quantity = 1
                }
            },
        PaymentMethodTypes = new List<string>()
            {
                "card"
            },
        Mode = "payment",
        SuccessUrl = domain + "/UserPage",
        CancelUrl = domain + "/Dashboard"
    };
    
    var service = new SessionService();
    Session session = service.Create(option);

    Response.Headers.Add("Subscription", session.Url);
    return new StatusCodeResult(303);

}
}