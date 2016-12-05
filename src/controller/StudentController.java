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

import model.Student;
import model.dao.StudentDAO;

/**
 * Servlet implementation class StudentController
 */
@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter( "action" );
		String forward = "";
		StudentDAO dao = new StudentDAO();
		if( action.equalsIgnoreCase("index") ) {
			ArrayList<Student>  students = dao.getAllStudents();
			request.setAttribute("students", students);
			forward = "StudentIndex.jsp";
		}else if( action.equalsIgnoreCase( "delete" ) ) {
			forward = "StudentIndex.jsp";
			String studentId = request.getParameter("studentId");
			Student student =  new Student();
			student.setUserId(Integer.parseInt(studentId));
			dao.deleteStudent(student);
			request.setAttribute("students", dao.getAllStudents() );
		}
		else if( action.equalsIgnoreCase( "edit" ) ) {
			forward = "StudentEdit.jsp";
			String studentId = request.getParameter("studentId");
			Student student = dao.getStudent("user_id", studentId);
			request.setAttribute("student", student);
		}    
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Student student = new Student();
		StudentDAO dao = new StudentDAO();

		System.out.println(request.getParameter( "firstName" ) );
		student.setFirstName( request.getParameter( "firstName" ) );
		student.setLastName( request.getParameter( "lastName" ) );
		student.setEmail( request.getParameter("email"));
		student.setCwId(request.getParameter("cwId"));
		//student.setDeptId(Integer.parseInt(request.getParameter("")));
		student.setDeptId(1);
		//student.setDob(Date.valueOf(request.getParameter("")));
		student.setDob(Date.valueOf("2017-10-10"));
		student.setPassword( request.getParameter("password"));
		student.setPhone(request.getParameter("password"));
		student.setUserType("Student");
		String studentId = request.getParameter("studentId");
		

		if( studentId == null || studentId.isEmpty() )
			dao.addStudent(student);
		else {
			student.setUserId( Integer.parseInt(studentId));
			dao.updateStudent(student);
		}
		RequestDispatcher view = request.getRequestDispatcher("StudentIndex.jsp");
		request.setAttribute("students", dao.getAllStudents());
		view.forward(request, response);
	}
}