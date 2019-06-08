package formvalidations;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import formvalidations.model.Employee;
import formvalidations.service.EmployeeService;

@Controller
public class MyJspController {

	@SuppressWarnings("unused")
	@Autowired
	private EmployeeService employeeService;
	
	
	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView gethomepage()
	{
		ModelAndView mv=new ModelAndView("home");
		
		mv.addObject("title", "HomePage");
		
		return mv;
		
	}
	
	@RequestMapping(value={"/regform"})
	public ModelAndView regform()
	{
		ModelAndView mv=new ModelAndView("home");
	
	mv.addObject("title", "EmployeeFormPage");
	mv.addObject("UserClickForm", true);
	
	return mv;
	
	}
	
	@RequestMapping(value="/listofemp", method = RequestMethod.GET)
	public ModelAndView listEmployees() {
		
		ModelAndView mv=new ModelAndView("home");
		
		mv.addObject("title", "EmployeeListPage");
		mv.addObject("UserClickEmployeeList", true);
		mv.addObject("employees", employeeService.listEmployeess());
		return mv;
		
		
		
	}
	

	}

