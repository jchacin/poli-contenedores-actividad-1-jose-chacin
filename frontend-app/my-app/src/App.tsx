import { useState } from "react";
import axios from "axios";
import { mockEmployees } from "./mocks/mockEmployees";
import "./App.css";
import type { Employee } from "./types/employee";

function App() {
  const [department, setDepartment] = useState({
    deptName: "",
    location: "",
    budget: "",
    phoneNumber: "",
    isActive: true,
    employees: [] as Employee[],
  });

  const handleDepartmentChange = (e: any) => {
    const { name, value, type, checked } = e.target;
    setDepartment({
      ...department,
      [name]: type === "checkbox" ? checked : value,
    });
  };

  const submitDepartment = async () => {
    try {
      console.log(department);
      await axios.post("http://localhost:5000/api/Departments", department);
      alert("Department created!");
    } catch (error) {
      console.error(error);
      alert("Error creating department");
    }
  };

  return (
    <div>
      <h2>Crear departamentos</h2>
      <form
        onSubmit={(e) => {
          e.preventDefault();
          submitDepartment();
        }}
      >
        <input
          name="deptName"
          placeholder="Nombre"
          onChange={handleDepartmentChange}
        />
        <input
          name="location"
          placeholder="Ubicación"
          onChange={handleDepartmentChange}
        />
        <input
          name="budget"
          type="number"
          placeholder="Presupuesto"
          onChange={handleDepartmentChange}
        />
        <input
          name="phoneNumber"
          placeholder="Contacto"
          onChange={handleDepartmentChange}
        />
        <label>
          Activo:
          <input
            name="isActive"
            type="checkbox"
            checked={department.isActive}
            onChange={handleDepartmentChange}
          />
        </label>
        <select
          name="employees"
          multiple
          onChange={(e) => {
            const selectedOptions = mockEmployees.filter((emp) =>
              Array.from(e.target.selectedOptions).some(
                (option) => Number(option.value) === emp.id
              )
            );
            setDepartment({
              ...department,
              employees: selectedOptions,
            });
          }}
        >
          {mockEmployees.map((emp) => (
            <option key={emp.id} value={emp.id}>
              {emp.firstName} {emp.lastName}
            </option>
          ))}
        </select>
        <button type="submit">Crear</button>
      </form>
    </div>
  );
}

export default App;
