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

import model.Course;
import model.Enrollment;
import model.User;
import model.dao.CourseDAO;
import model.dao.EnrollmentDAO;

/**
 * Servlet implementation class FacultyHomeController
 */
@WebServlet("/FacultyHomeController")
public class FacultyHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FacultyHomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter( "action" );
		String forward = "";
		CourseDAO dao = new CourseDAO();
		EnrollmentDAO dao2=new EnrollmentDAO();
		HttpSession session = request.getSession(true); 
		User us=(User) session.getAttribute("currentUser");
		if( action.equalsIgnoreCase("index") ){
		ArrayList<Course>  course = dao.getAllCourses("faculty_id",us.getUserId().toString());
		request.setAttribute("courses", course);
		forward="facultyHome.jsp";
		}else if(action.equalsIgnoreCase("courseDetail")){
			String courseId=request.getParameter("courseId");
			ArrayList<Enrollment> enrollment = dao2.getAllFaculty(courseId, us.getUserId().toString());
			request.setAttribute("enrollments", enrollment);
			forward="facultyCourseDetails.jsp";
		}else if(action.equalsIgnoreCase("edit")){
			String enrollmentId =request.getParameter("enrollmentId");
			Enrollment enroll=dao2.getEnrollment("enrollment_id", enrollmentId);
			request.setAttribute("enrollments", enroll);
			forward="facultyHomeEdit.jsp";
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		EnrollmentDAO dao= new EnrollmentDAO();
		Enrollment enroll=new Enrollment();
		HttpSession session = request.getSession(true); 
		User use=(User) session.getAttribute("currentUser");
	
		RequestDispatcher view = request.getRequestDispatcher("facultyHome.jsp");
		request.setAttribute("enrollment", dao.getAllEnrollment(use));
		view.forward(request, response);
	}

}
