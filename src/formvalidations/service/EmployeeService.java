package formvalidations.service;

import java.util.List;

import formvalidations.model.Employee;

public interface EmployeeService {
	
	public void addEmployee(Employee employee);

	public List<Employee> listEmployeess();
	
	public Employee getEmployee(int id);
	
	public void deleteEmployee(Employee employee);
}
