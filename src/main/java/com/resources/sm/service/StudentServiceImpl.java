package com.resources.sm.service;

import com.resources.sm.DAO.StudentDAO;
import com.resources.sm.api.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{
    @Autowired
    private StudentDAO studentDAO;


    @Override
    public List<Student> loadStudents() {
        List<Student> studentList = studentDAO.loadStudent();
        return studentList;
    }

    @Override
    public void saveStudent(Student student) {
        if (student.getCountry().equalsIgnoreCase( "UK")){
            System.out.println("Mail sent to"+student.getName());
        }
        studentDAO.saveStudent(student);
    }

    @Override
    public void updateStudent(Student student) {
        studentDAO.updateStudent(student);
    }

    @Override
    public Student getStudent(int id) {
        return studentDAO.getStudent(id);
    }

    @Override
    public void deleteStudent(int id) {
        studentDAO.deleteStudent(id);
    }
}
