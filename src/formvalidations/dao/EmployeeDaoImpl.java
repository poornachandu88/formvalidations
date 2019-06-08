package formvalidations.dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import formvalidations.model.Employee;

@Repository("employeeDao")
public class EmployeeDaoImpl implements EmployeeDao {

	 @Autowired
		private SessionFactory sessionFactory;
		
		public void addEmployee(Employee employee) {
			sessionFactory.getCurrentSession().saveOrUpdate(employee);
		}
					@SuppressWarnings({ "unchecked", "deprecation" })
				public List<Employee> listEmployeess()
		 {
			 
			 return (List<Employee>) sessionFactory.getCurrentSession().createCriteria(Employee.class).list();
		}

		public Employee getEmployee(int id) {
			return (Employee) sessionFactory.getCurrentSession().get(Employee.class, id);
		}

		public void deleteEmployee(Employee employee) {
			sessionFactory.getCurrentSession().createQuery("DELETE FROM Employee WHERE empid = "+employee.getId()).executeUpdate();
		}


}
