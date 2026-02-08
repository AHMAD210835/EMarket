using Microsoft.AspNetCore.Mvc;
using EMarket.Data;
using EMarket.Models;
using Newtonsoft.Json;

namespace EMarket.Controllers
{
    public class CheckoutController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CheckoutController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var cart = GetCart();
            return View(cart);
        }

        [HttpPost]
        public IActionResult Confirm()
        {
            var cart = GetCart();

            if (!cart.Any())
                return RedirectToAction("Index", "Cart");

            var order = new Order
            {
                UserEmail = User.Identity?.Name ?? "Anonim",
                Items = cart.Select(c => new OrderItem
                {
                    ProductName = c.Name,
                    Price = c.Price,
                    Quantity = c.Quantity
                }).ToList()
            };

            _context.Orders.Add(order);
            _context.SaveChanges();

            HttpContext.Session.Remove("Cart");

            return RedirectToAction("Success");
        }

        public IActionResult Success()
        {
            return View();
        }

        private List<CartItem> GetCart()
        {
            var session = HttpContext.Session.GetString("Cart");
            return session == null ? new List<CartItem>() : JsonConvert.DeserializeObject<List<CartItem>>(session) ?? new List<CartItem>();
        }
    }
}

