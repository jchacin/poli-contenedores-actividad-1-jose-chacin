using Microsoft.AspNetCore.Mvc;
using poli.containers.activity.one.Contexts;
using poli.containers.activity.one.Models;

namespace poli.containers.activity.one.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class DepartmentsController : ControllerBase
    {
        private readonly AppDbContext _context;

        public DepartmentsController(AppDbContext context)
        {
            _context = context;
        }

        [HttpPost]
        public async Task<IActionResult> CreateDepartment([FromBody] Department department)
        {
            department.CreatedAt = DateTime.SpecifyKind(DateTime.UtcNow, DateTimeKind.Unspecified);
            _context.Departments.Add(department);
            await _context.SaveChangesAsync();
            return Ok(department);
        }

        [HttpGet]
        public IActionResult GetDepartment([FromQuery] int id)
        {
            var department = _context.Departments.FirstOrDefault(d => d.DeptId == id);
            return department != null ? Ok(department) : NotFound();
        }
    }
}
