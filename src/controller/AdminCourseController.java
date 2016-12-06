package controller;

import java.io.IOException; 
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Course;
import model.Department;
import model.dao.CourseDAO;
import model.dao.DepartmentDao;


/**
 * Servlet implementation class Course Controller
 */
//@WebServlet("/AdminStudentController")
public class AdminCourseController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter( "action" );
		String forward = "";
		CourseDAO dao = new CourseDAO();
		if( action.equalsIgnoreCase("index") ) {
	
			ArrayList<Course>  course = dao.getAllCourses();
			request.setAttribute("courses", course);
			forward = "courseIndex.jsp";
		}else if( action.equalsIgnoreCase( "delete" ) ) {
			forward = "courseIndex.jsp";
			String courseId = request.getParameter("courseId");
			Course course =  new Course();
			course.setCourseId(Integer.parseInt(courseId));
			dao.deleteCourse(course);
			request.setAttribute("courses", dao.getAllCourses() );
		}
		else if( action.equalsIgnoreCase( "edit" ) ) {
			forward = "courseEdit.jsp";
			String courseId = request.getParameter("courseId");
			Course course=dao.getCourse("course_id", courseId);
			request.setAttribute("course", course);
			DepartmentDao deptDao = new DepartmentDao();
			ArrayList<Department>  departments = deptDao.getAllDepartments();
			request.setAttribute("departments", departments);
		}    
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Course course = new Course();
		CourseDAO dao = new CourseDAO();

		course.setCourseName(request.getParameter("courseName"));
		course.setStartDate(Date.valueOf(request.getParameter("startDate")));
		course.setStartDate(Date.valueOf(request.getParameter("endDate")));
		course.setDeptId(Integer.parseInt(request.getParameter("deptId")));
		//student.setDob(Date.valueOf(request.getParameter("")));
		//student.setDob(Date.valueOf("2017-10-10"));
		String courseId=request.getParameter("courseId");
		

		if( courseId == null || courseId.isEmpty() )
			dao.addCourse(course);
		else {
			course.setCourseId(Integer.parseInt(courseId));
			dao.updateCourses(course);
			//student.setUserId( Integer.parseInt(studentId));
			//dao.updateStudent(student);
		}
		RequestDispatcher view = request.getRequestDispatcher("courseIndex.jsp");
		request.setAttribute("courses", dao.getAllCourses());
		view.forward(request, response);
	}
}