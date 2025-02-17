using Microsoft.EntityFrameworkCore;
using RaktarkezeloWebApi.Models;

namespace RaktarkezeloWebApi.DbContext
{
    public class RaktarContext : Microsoft.EntityFrameworkCore.DbContext
    {
        public RaktarContext(DbContextOptions<RaktarContext> options)
            : base(options) { }
             public DbSet<Product> Products { get; set; }
             public DbSet<Supplier> Suppliers { get; set; }
        

        internal object Entry(Product product)
        {
            throw new NotImplementedException();
        }

        internal Task SaveChangesAsync()
        {
            throw new NotImplementedException();
        }
    }
}
