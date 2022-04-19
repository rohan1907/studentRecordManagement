package com.resources.sm.service;

import com.resources.sm.api.Student;

import java.util.List;

public interface StudentService {
    List<Student> loadStudents();

    boolean saveStudent(Student student);
    void updateStudent(Student student);
    Student getStudent(int id);

    void deleteStudent(int id);
}
