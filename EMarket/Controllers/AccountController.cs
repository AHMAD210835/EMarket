using Microsoft.AspNetCore.Mvc;

namespace EMarket.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult AccessDenied()
        {
            return View();
        }
    }
}
