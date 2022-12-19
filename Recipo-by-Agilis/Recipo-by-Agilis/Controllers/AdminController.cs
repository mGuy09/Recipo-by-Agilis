
using Identity.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;


namespace Recipo_by_Agilis.Controllers;

public class AdminController: Controller
{
    private UserManager<AppUser> userManager;

    public AdminController(UserManager<AppUser> usrMgr)
    {
        userManager = usrMgr;
    }

    //public IActionResult Index()
    //{
    //    return View();
    //}
}