package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Enrollment;
import model.Student;
import model.dao.EnrollmentDAO;

/**
 * Servlet implementation class EnrollmentController
 */
@WebServlet("/EnrollmentController")
public class EnrollmentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EnrollmentController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true); 
		String action = request.getParameter( "action" );
		Student student = (Student)session.getAttribute("currentUser");
		String forward = "";
		EnrollmentDAO dao = new EnrollmentDAO();
		if( action.equalsIgnoreCase("index") ) {
			ArrayList<Enrollment>  enrollment = dao.getAllEnrollment(student);
			request.setAttribute("enrollments", enrollment);
			forward = "EnrollmentIndex.jsp";
		}else if( action.equalsIgnoreCase( "delete" ) ) {
			forward = "EnrollmentIndex.jsp";
			String enrollmentId = request.getParameter("enrollmentId");
			Enrollment enrollment =  new Enrollment();
			enrollment.setStudentId(Integer.parseInt(enrollmentId));
			dao.deleteEnrollments(enrollment);
			request.setAttribute("enrollments", dao.getAllEnrollment(student));
		}
		else if( action.equalsIgnoreCase( "edit" ) ) {
			forward = "EnrollmentEdit.jsp";
			String enrollmentId = request.getParameter("enrollmentId");
			Enrollment enrollment = dao.getEnrollment("enrollment_id", enrollmentId);
			request.setAttribute("enrollment", enrollment);
		}    
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
