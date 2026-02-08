using System.ComponentModel.DataAnnotations;

namespace EMarket.Models
{
    public class Order
    {
        public int Id { get; set; }

        [Required]
        public required string UserEmail { get; set; }

        public DateTime OrderDate { get; set; } = DateTime.Now;

        public List<OrderItem> Items { get; set; } = new();
    }
}

