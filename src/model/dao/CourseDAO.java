package model.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import model.Course;

public class CourseDAO extends Dao{

		public Course getCoures(String columnName, String value){
			Course course = null;  
			try {
				String sql= "select * from courses where " + columnName +  "='" + value + "'";
				rs = executeFetchQuery (sql);			
				if (rs.next()){	
					course = new Course();
					course.setCourseId(Integer.parseInt(rs.getString("course_id")));
					course.setCourseName(rs.getString("course_name"));
					course.setDeptId(rs.getInt("dept_id"));
					
				}
			} 
			catch (SQLException e) {
				e.printStackTrace();
			}
			return course;
		}

		public ArrayList<Course> getAllCustomers(){	
			ArrayList <Course> list = new ArrayList<Course>();
			try {
				String sql= "select * from courses'" ;
				rs = executeFetchQuery (sql);			

				while (rs.next()){	
					Course course =  new Course();
					course.setCourseId(Integer.parseInt(rs.getString("course_id")));
					course.setCourseName(rs.getString("course_name"));
					course.setDeptId(rs.getInt("dept_id"));
					list.add(course);
				}

			} 
			catch (SQLException e) {
				e.printStackTrace();
			}	
			return list;		
		}


		public boolean addCourse(Course course){
			try {
				String sql= "INSERT INTO courses(course_id,course_name,dept_id) values('" +
						course.getCourseId() + "','" + course.getCourseName() + "','" + course.getDeptId()+ "')";
				executeModifySelectQuery(sql);				
			} 
			catch (Exception e) {
				e.printStackTrace();
				throw e;
			}
			return true;
		}

		public void updateCourses(Course course){
			try {
				String sql= "UPDATE courses SET course_id = '" + course.getCourseId() + "',course_name='" + course.getCourseName() +
						"', dept_id='" + course.getDeptId() + "'";
				executeModifySelectQuery(sql);					
			} 
			catch (Exception e) {
				e.printStackTrace();
			}

		}


		public void deleteCustomer(Course course){
			try {
				String sql= "DELETE FROM courses WHERE course_id = " + course.getCourseId();
				executeModifySelectQuery(sql);					
			} 
			catch (Exception e) {
				e.printStackTrace();
			}

		}

	}



