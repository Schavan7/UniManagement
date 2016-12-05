package model.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import model.Course;
import model.Department;

public class DepartmentDao extends Dao{
	
	public Department getDepartment(String columnName, String value){
		Department dept = null;  
		try {
			String sql= "select * from departments where " + columnName +  "='" + value + "'";
			rs = executeFetchQuery (sql);			
			if (rs.next()){	
				dept = new Department();
				dept.setDeptId(Integer.parseInt(rs.getString("dept_id")));
				dept.setDeptName("dept_name");				
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return dept;
	}

	public ArrayList<Department> getAllCustomers(){	
		ArrayList <Department> list = new ArrayList<Department>();
		try {
			String sql= "select * from departments'" ;
			rs = executeFetchQuery (sql);			

			while (rs.next()){	
				Department dept = new Department();
				dept.setDeptId(Integer.parseInt(rs.getString("dept_id")));
				dept.setDeptName("dept_name");
				list.add(dept);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}	
		return list;		
	}


	public boolean addDepartment(Department dept){
		try {
			String sql= "INSERT INTO departments(dept_id,dept_name) values('" +
					dept.getDeptId() + "','" + dept.getDeptName() + "')";
			executeModifySelectQuery(sql);				
		} 
		catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return true;
	}

	public void updateDepartment(Department dept){
		try {
			String sql= "UPDATE departments SET dept_id = '" + dept.getDeptId() + "',dept_name='" + dept.getDeptName() +
					"'";
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
