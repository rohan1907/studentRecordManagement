package com.resources.sm.service;

import com.resources.sm.api.Student;

import java.util.List;

public interface StudentService {
    List<Student> loadStudents();

    void saveStudent(Student student);
    Student getStudent(int id);
}