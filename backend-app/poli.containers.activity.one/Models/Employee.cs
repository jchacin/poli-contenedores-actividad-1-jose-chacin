using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace poli.containers.activity.one.Models
{
    [Table("employees")]
    public class Employee
    {

        [Key]
        [Column("emp_id")]
        public int EmpId { get; set; }

        [Required]
        [Column("first_name", TypeName = "varchar(50)")]
        public string FirstName { get; set; }

        [Required]
        [Column("last_name", TypeName = "varchar(50)")]
        public string LastName { get; set; }

        [Required]
        [Column("email", TypeName = "varchar(100)")]
        public string Email { get; set; }

        [Column("hire_date", TypeName = "date")]
        public DateTime HireDate { get; set; }

        [Column("salary", TypeName = "decimal(10,2)")]
        public decimal Salary { get; set; }


        [ForeignKey("Department")]
        [Column("dept_id")]
        public int DeptId { get; set; }

        [JsonIgnore]
        public Department? Department { get; set; }
    }
}
