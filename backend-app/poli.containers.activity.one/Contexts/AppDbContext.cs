using Microsoft.EntityFrameworkCore;
using poli.containers.activity.one.Models;

namespace poli.containers.activity.one.Contexts
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<Department> Departments { get; set; }
        public DbSet<Employee> Employees { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Department>()
                .ToTable("departments")
                .HasKey(d => d.DeptId);

            modelBuilder.Entity<Employee>()
                .ToTable("employees")
                .HasKey(e => e.EmpId);

            modelBuilder.Entity<Department>()
                .HasMany(d => d.Employees)
                .WithOne(e => e.Department)
                .HasForeignKey(e => e.DeptId)
                .OnDelete(DeleteBehavior.SetNull);
        }
    }
}
