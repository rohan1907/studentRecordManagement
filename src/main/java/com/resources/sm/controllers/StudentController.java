package com.resources.sm.controllers;

import java.util.List;


import com.resources.sm.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.resources.sm.DAO.StudentDAO;
import com.resources.sm.api.Student;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	@GetMapping("/showStudent")
	public String showStudentList(Model model) {
		List<Student> studentList = studentService.loadStudents();
		model.addAttribute("students", studentList);
		return "student-list";
	}

	@GetMapping("/addStudent")
	public String addStudent(Model model) {
		Student student = new Student();
		model.addAttribute("student", student);
		return "add-student";
	}


	@PostMapping("/save-student")
	public String saveStudent(Student student) {
		//code to push data to the db
		if(student.getId() == 0){
			boolean result = studentService.saveStudent(student);
			if(result == false)
				return "add-student";
		} else{
			studentService.updateStudent(student);
		}


		return "redirect:/thankyou";
	}

	@GetMapping("/thankyou")
	public String thankYou(){
		return "thankyou";
	}

	@GetMapping("/updateStudent")
	public String updateStudent(@RequestParam("userId") int id, Model model){
		Student theStudent = studentService.getStudent(id);
		model.addAttribute("student", theStudent);
		return "add-student";
	}

	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("userId") int id, Model model){
		studentService.deleteStudent(id);
		System.out.println("Deleted student with id " +id);
		return "redirect:/thankyou";
	}
}
