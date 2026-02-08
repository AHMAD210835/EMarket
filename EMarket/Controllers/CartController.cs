using Microsoft.AspNetCore.Mvc;
using EMarket.Models;
using EMarket.Data;
using Newtonsoft.Json;

namespace EMarket.Controllers
{
    public class CartController : Controller
    {
        private readonly ApplicationDbContext _context;

        [HttpPost]
        public IActionResult ClearCart()
        {
            HttpContext.Session.Remove("Cart");      
            HttpContext.Session.SetInt32("CartCount", 0);  
            return Ok();
        }



        public CartController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var cart = GetCart();
            return View(cart);
        }

        public IActionResult AddToCart(int id)
        {
            var product = _context.Products.FirstOrDefault(p => p.Id == id);
            if (product == null) return NotFound();

            var cart = GetCart();
            var existing = cart.FirstOrDefault(c => c.ProductId == id);

            if (existing != null)
                existing.Quantity++;
            else
                cart.Add(new CartItem { ProductId = product.Id, Name = product.Name, Price = product.Price, Quantity = 1 });

            SaveCart(cart);

            int currentCount = HttpContext.Session.GetInt32("CartCount") ?? 0;
            HttpContext.Session.SetInt32("CartCount", currentCount + 1);

            return Redirect(Request.Headers["Referer"].ToString());

        }


        public IActionResult Remove(int id)
        {
            var cart = GetCart();
            var item = cart.FirstOrDefault(c => c.ProductId == id);
            if (item != null) cart.Remove(item);
            SaveCart(cart);
            return RedirectToAction("Index");
        }

        private List<CartItem> GetCart()
        {
            var session = HttpContext.Session.GetString("Cart");
            return session == null ? new List<CartItem>() : JsonConvert.DeserializeObject<List<CartItem>>(session) ?? new List<CartItem>();
        }

        private void SaveCart(List<CartItem> cart)
        {
            HttpContext.Session.SetString("Cart", JsonConvert.SerializeObject(cart));
        }


    }
}

