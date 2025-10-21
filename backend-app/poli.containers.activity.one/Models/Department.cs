using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace poli.containers.activity.one.Models
{

    [Table("departments")]
    public class Department
    {
        [Key]
        [Column("dept_id")]
        public int DeptId { get; set; }

        [Required]
        [Column("dept_name", TypeName = "varchar(100)")]
        public string DeptName { get; set; }

        [Column("location", TypeName = "text")]
        public string Location { get; set; }

        [Column("budget", TypeName = "numeric(12,2)")]
        public decimal Budget { get; set; }

        [Column("created_at", TypeName = "timestamp")]
        public DateTime CreatedAt { get; set; }

        [Column("is_active")]
        public bool IsActive { get; set; }

        [Column("phone_number", TypeName = "varchar(20)")]
        public string PhoneNumber { get; set; }

        public ICollection<Employee> Employees { get; set; }
    }
}
