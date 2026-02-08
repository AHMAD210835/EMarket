using System.ComponentModel.DataAnnotations;

namespace EMarket.Models
{
    public class Product
    {
        public int Id { get; set; }

        [Required]
        public required string Name { get; set; }

        [Required]
        public required string Description { get; set; }

        [Range(0.01, 1000000)]
        public decimal Price { get; set; }

        public string? ImageUrl { get; set; }

        public string Category { get; set; } = string.Empty;
    }
}
