package com.resources.sm.DAO;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.resources.sm.api.Student;
import com.resources.sm.rowmapper.StudentRowMapper;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Student> loadStudent() {
		
		
		String sql = "SELECT * FROM students";
		List<Student> theListOfStudent = jdbcTemplate.query(sql, new StudentRowMapper());
		
		return theListOfStudent;
	}

	@Override
	public void saveStudent(Student student) {
		Object [] sqlParams = {student.getName(),student.getMobile(),student.getCountry()};
		String query = "INSERT INTO students (NAME, MOBILE, COUNTRY) values(?,?,?)";
		jdbcTemplate.update(query, sqlParams);

		System.out.println("Data pushed into DB");
	}

}
