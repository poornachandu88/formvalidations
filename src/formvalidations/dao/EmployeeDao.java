package formvalidations.dao;

import java.util.List;

import formvalidations.model.Employee;

public interface EmployeeDao {

	
	public void addEmployee(Employee employee);

	public List<Employee> listEmployeess();
	
	public Employee getEmployee(int id);
	
	public void deleteEmployee(Employee employee);

	
	
}
