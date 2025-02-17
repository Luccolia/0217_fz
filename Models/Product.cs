namespace RaktarkezeloWebApi.Models
{
    public class Product
    {
        public int id { get; set; }
        public string? name { get; set; }
        public string? description { get; set; }
        public decimal price { get; set; }
        public int stock { get; set; }
        public int supplierId { get; set; }
        public Supplier? supplier { get; set; }
    }
}
