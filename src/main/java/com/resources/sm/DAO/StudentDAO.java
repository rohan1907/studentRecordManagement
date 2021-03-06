package com.resources.sm.DAO;
import java.util.List;

import com.resources.sm.api.Student;
public interface StudentDAO {
	List<Student>  loadStudent();
	void saveStudent(Student student);
	Student getStudent(int id);

	void updateStudent(Student student);

	void deleteStudent(int id);
}
