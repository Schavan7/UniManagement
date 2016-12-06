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

import model.Department;
import model.Faculty;
import model.dao.DepartmentDao;
import model.dao.FacultyDAO;


/**
 * Servlet implementation class FacultyController
 */
@WebServlet("/AdminFacultyController")
public class AdminFacultyController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter( "action" );
		String forward = "";
		FacultyDAO dao = new FacultyDAO();
		if( action.equalsIgnoreCase("index") ) {
	
			ArrayList<Faculty>  faculty = dao.getAllFaculty();
			request.setAttribute("faculty", faculty);
			forward = "facultyIndex.jsp";
		}else if( action.equalsIgnoreCase( "delete" ) ) {
			forward = "facultyIndex.jsp";
			String facultyId = request.getParameter("facultyId");
			Faculty faculty =  new Faculty();
			faculty.setUserId(Integer.parseInt(facultyId));
			dao.deleteFaculty(faculty);
			request.setAttribute("faculty", dao.getAllFaculty());
		}
		else if( action.equalsIgnoreCase( "edit" ) ) {
			forward = "facultyEdit.jsp";
			String facultyId = request.getParameter("facultyId");
			Faculty faculty = dao.getFaculty("user_id", facultyId);
			request.setAttribute("faculty", faculty);
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
		Faculty faculty = new Faculty();
		FacultyDAO dao = new FacultyDAO();

		faculty.setFirstName( request.getParameter( "firstName" ) );
		faculty.setLastName( request.getParameter( "lastName" ) );
		faculty.setEmail( request.getParameter("email"));
		faculty.setCwId(request.getParameter("cwId"));
		faculty.setDeptId(Integer.parseInt(request.getParameter("departmentId")));
		faculty.setDob(Date.valueOf(request.getParameter("Dob")));
		//student.setDob(Date.valueOf("2017-10-10"));
		faculty.setPassword( request.getParameter("password"));
		faculty.setPhone(request.getParameter("phone"));
		faculty.setUserType(request.getParameter("userType"));
		String facultyId = request.getParameter("facultyId");
		

		if( facultyId == null || facultyId.isEmpty() )
			dao.addFaculty(faculty);
		else {
			faculty.setUserId( Integer.parseInt(facultyId));
			dao.updateFaculty(faculty);;
		}
		RequestDispatcher view = request.getRequestDispatcher("facultyIndex.jsp");
		request.setAttribute("faculty", dao.getAllFaculty());
		view.forward(request, response);
	}
}
