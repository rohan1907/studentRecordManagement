package com.resources.sm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.resources.sm.DAO.StudentDAO;
import com.resources.sm.api.Student;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class StudentController {
	
	@Autowired
	private StudentDAO StudentDAO;
	
	@GetMapping("/showStudent")
	public String showStudentList(Model model) {
		
		List<Student> studentList = StudentDAO.loadStudent();

		model.addAttribute("students", studentList);
		return "student-list";
	}

	@GetMapping("/addStudent")
	public String addStudent(Model model) {
		Student student = new Student();
		model.addAttribute("student", student);
		return "add-student";
	}

	@ResponseBody
	@GetMapping("/save-student")
	public String saveStudent(Student student) {
		//code to push data to the db
		StudentDAO.saveStudent(student);

		return "Student Saved!";
	}
}
