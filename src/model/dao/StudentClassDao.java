package model.dao;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

import model.StudentClass;

public class StudentClassDao extends Dao {
	public StudentClass getClass(String columnName, String value){
		StudentClass classes = null; 
		try {
			String sql= "select * from classess where " + columnName +  "='" + value + "'";
			rs = executeFetchQuery (sql);			
			if (rs.next()){	
				classes = new StudentClass();
				classes.setClassId(Integer.parseInt(rs.getString("class_id")));
				classes.setCapacity(Integer.parseInt("capacity"));
				classes.setCourseid(Integer.parseInt(rs.getString("course_id")));
				classes.setStartDate(rs.getDate("startdate"));
				classes.setendDate(rs.getDate("enddate"));
				classes.setFacultyId(Integer.parseInt(rs.getString("faculty_id")));
				
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return classes;
	}

	public ArrayList<StudentClass> getAllStudents(){	
		ArrayList <StudentClass> list = new ArrayList<StudentClass>();
		try {
			String sql= "select * from classes'" ;
			rs = executeFetchQuery (sql);			

			while (rs.next()){	
				StudentClass classes = new StudentClass();
				classes.setClassId(Integer.parseInt(rs.getString("class_id")));
				classes.setCapacity(Integer.parseInt("capacity"));
				classes.setCourseid(Integer.parseInt(rs.getString("course_id")));
				classes.setStartDate(rs.getDate("startdate"));
				classes.setendDate(rs.getDate("enddate"));
				list.add(classes);
			}

		} 
		catch (SQLException e) {
			e.printStackTrace();
		}	
		return list;		
	}


	public boolean addClass(StudentClass classes){
		try {
			String sql= "INSERT INTO classes(class_id,capacity,startdate,enddate,faculty_id,course_id) values('" +
					classes.getClassId() + "','" + classes.getCapacity() + "','" + classes.getStartDate()+ "','" + classes.getendDate()+ "','" + classes.getFacultyId()+ "','" + classes.getCourseid()+ "')";
			executeModifySelectQuery(sql);				
		} 
		catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return true;
	}

	public void updateCourses(StudentClass classes){
		try {
			String sql= "UPDATE courses SET class_id = '" + classes.getClassId() + "',capacity='" + classes.getCapacity() +
					"', startdate='" + classes.getStartDate() + "',  enddate='" + classes.getendDate() + "', faculty_id='" + classes.getFacultyId() + "', course_id='" + classes.getCourseid() + "' ";
			executeModifySelectQuery(sql);					
		} 
		catch (Exception e) {
			e.printStackTrace();
		}

	}


	public void deleteCustomer(StudentClass classes){
		try {
			String sql= "DELETE FROM classes WHERE class_id = " + classes.getClassId();
			executeModifySelectQuery(sql);					
		} 
		catch (Exception e) {
			e.printStackTrace();
		}

	}

}
