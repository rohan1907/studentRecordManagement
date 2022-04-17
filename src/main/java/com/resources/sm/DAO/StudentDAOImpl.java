package com.resources.sm.DAO;

import java.sql.SQLException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.SQLWarningException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.resources.sm.api.Student;
import com.resources.sm.rowmapper.StudentRowMapper;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Student> loadStudent() throws SQLWarningException {
		try{
			String sql = "SELECT * FROM students ORDER BY id";
			List<Student> theListOfStudent = jdbcTemplate.query(sql, new StudentRowMapper());
			return theListOfStudent;
		} catch (SQLWarningException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public void saveStudent(Student student) throws EmptyResultDataAccessException {
		try{
			Object [] sqlParams = {student.getName(),student.getMobile(),student.getCountry()};
			String query = "INSERT INTO students (NAME, MOBILE, COUNTRY) values(?,?,?)";
			jdbcTemplate.update(query, sqlParams);
			System.out.println("Data pushed into DB");
		} catch (DataAccessException e) {
			throw new RuntimeException(e);
		}
	}


	@Override
	public Student getStudent(int id) throws EmptyResultDataAccessException{
		try{
			String sql = "SELECT * FROM STUDENTS WHERE ID = ?";
			Student student = jdbcTemplate.queryForObject(sql, new StudentRowMapper(),id);
			return student;
		} catch (DataAccessException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public void updateStudent(Student student) throws EmptyResultDataAccessException {
		try{
			Object [] sqlParams = {student.getName(),student.getMobile(),student.getCountry(), student.getId()};
			String query = "UPDATE students SET NAME = ?, MOBILE = ?, COUNTRY = ? WHERE id = ?";
			jdbcTemplate.update(query, sqlParams);
			System.out.println("Data updated into DB");
		} catch (DataAccessException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public void deleteStudent(int id) {
		String query = "DELETE FROM students WHERE ID = ?";
		jdbcTemplate.update(query,id);

	}

}
