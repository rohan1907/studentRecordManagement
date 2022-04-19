package com.resources.sm.service;

import com.resources.sm.DAO.StudentDAO;
import com.resources.sm.api.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
    public boolean saveStudent(Student student) {
        Pattern pattern = Pattern.compile("([$&+,:;=?@#|'<>.^*()%!-])");
        Matcher name = pattern.matcher(student.getName());
        Matcher country = pattern.matcher(student.getCountry());
        boolean matchFound = name.find() || country.find();
        if(matchFound) {
            System.out.println("Illegal characters entered");
            return false;
        }
        studentDAO.saveStudent(student);
        return true;
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
