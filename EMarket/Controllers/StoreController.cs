using Microsoft.AspNetCore.Mvc;
using EMarket.Data;
using System.Collections.Generic;
using System.Linq;
using EMarket.ViewModels;

namespace EMarket.Controllers
{
    public class StoreController : Controller
    {
        private readonly ApplicationDbContext _context;

        public StoreController(ApplicationDbContext context)
        {
            _context = context;
        }

      
        public IActionResult Index()
        {
            var categories = new List<CategoryViewModel>
            {
                new CategoryViewModel { CategoryName = "Phones", ImageUrl = "/images/categories/phones.jpeg" },
                new CategoryViewModel { CategoryName = "Laptops", ImageUrl = "/images/categories/laptops.png" },
                new CategoryViewModel { CategoryName = "Accessories", ImageUrl = "/images/categories/accessories.png" },
                new CategoryViewModel { CategoryName = "TVs", ImageUrl = "/images/categories/tvs.jpeg" }
            };

            return View(categories);
        }


        public IActionResult ByCategory(string category)
        {
            if (string.IsNullOrEmpty(category))
                return RedirectToAction("Index");

            var products = _context.Products
                .Where(p => p.Category == category)
                .ToList();

            ViewData["CategoryName"] = category;
            return View(products);
        }

     
        public IActionResult Details(int id)
        {
            var product = _context.Products.FirstOrDefault(p => p.Id == id);
            if (product == null)
                return NotFound();

            return View(product);
        }

        public IActionResult Category(string category)
        {
            var products = _context.Products.Where(p => p.Category == category).ToList();
            return View("ByCategory", products);
        }

    }
}
