package model.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import model.Enrollment;
import model.Student;


public class EnrollmentDAO extends Dao{
	
		public Enrollment getEnrollment(String columnName, String value){
			Enrollment et = null;  
			try {
				String sql= "select * from enrollments where " + columnName +  "='" + value + "'";
				rs = executeFetchQuery (sql);			
				if (rs.next()){	
					et = new Enrollment();
					et.setEnrollId(rs.getInt("enrollment_id"));
					et.setClassId(rs.getInt("class_id"));
					et.setCourseId(rs.getInt("course_id"));
					et.setCourseName(rs.getString("course_name"));
					et.setEndDate(rs.getDate("enddate"));
					et.setStartDate(rs.getDate("startdate"));
					et.setGrade(rs.getDouble("grade"));
					et.setStudentId(rs.getInt("student_id"));
				}
			} 
			catch (SQLException e) {
				e.printStackTrace();
			}
			return et;
		}
		
		public ArrayList<Enrollment> getAllEnrollment(Student st){	
			ArrayList <Enrollment> list = new ArrayList<Enrollment>();
			try {
				String sql= "select * from enrollments where student_id="+st.getUserId()+"'" ;
				rs = executeFetchQuery (sql);			

				while (rs.next()){	
					Enrollment et =  new Enrollment();
					et.setEnrollId(rs.getInt("enrollment_id"));
					et.setClassId(rs.getInt("class_id"));
					et.setCourseId(rs.getInt("course_id"));
					et.setCourseName(rs.getString("course_name"));
					et.setEndDate(rs.getDate("enddate"));
					et.setStartDate(rs.getDate("startdate"));
					et.setGrade(rs.getDouble("grade"));
					et.setStudentId(rs.getInt("student_id"));
					list.add(et);
				}

			} 
			catch (SQLException e) {
				e.printStackTrace();
			}	
			return list;		
		}


		public boolean addEnrollment(Enrollment et){
			try {
				String sql= "INSERT INTO enrollments(enrollment_id,class_id,course_id,course_name,startdate,enddate,grade,student_id) values('" +
						et.getEnrollId() + "','" + et.getClassId() + "','" + et.getCourseId() + "','" +
						et.getCourseName() + "','" + et.getStartDate() + "','"+ et.getEndDate() + "','"+
						et.getGrade()+ "','"+ et.getStudentId()+ "')";

				executeModifySelectQuery(sql);				
			} 
			catch (Exception e) {
				e.printStackTrace();
				throw e;
			}
			return true;
		}

		public void updateEnrollment(Enrollment ft){
			try {
				String sql= "UPDATE enrollments SET enrollment_id = '" + ft.getEnrollId() + "',class_id='" + ft.getClassId() +
						"', course_id='" + ft.getCourseId() + "', course_name= '"+ ft.getCourseName() + "',startdate='" + ft.getStartDate() + 
						 "',enddate='" + ft.getEndDate() + "',grade='" + ft.getGrade() + "',student_id'" + ft.getStudentId() +"'";
				executeModifySelectQuery(sql);					
			} 
			catch (Exception e) {
				e.printStackTrace();
			}

		}


		public void deleteEnrollments(Enrollment et){
			try {
				String sql= "DELETE FROM enrollments WHERE enrollment_id = " + et.getEnrollId();
				executeModifySelectQuery(sql);					
			} 
			catch (Exception e) {
				e.printStackTrace();
			}

		}
	

}
