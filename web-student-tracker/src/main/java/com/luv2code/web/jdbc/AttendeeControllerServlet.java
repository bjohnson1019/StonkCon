package com.luv2code.web.jdbc;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class AttendeeControllerServlet
 */
@WebServlet("/AttendeeControllerServlet")
public class AttendeeControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private AttendeeDbUtil attendeeDbUtil;
	
	@Resource(name="jdbc/web_student_tracker")
	private DataSource dataSource;
	
	
	
	@Override
	public void init() throws ServletException {
		super.init();
		
		//create our attendee db util then pass in the conn pool / datasource
		try {
			attendeeDbUtil = new AttendeeDbUtil(dataSource);
		}
		catch(Exception exc) {
			throw new ServletException(exc);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// list the attendees in MVC fashion
		try {
		listAttendees(request, response);
		}
		catch (Exception exc){
			throw new ServletException(exc);
		}
			
	}

	private void listAttendees(HttpServletRequest request, HttpServletResponse response) 
		throws Exception {
		
		//get attendees from db util
		List<Attendee> attendees = attendeeDbUtil.getAttendees();
		
		//add them to the request
		request.setAttribute("ATTENDEE_LIST", attendees);
		
		//send to JSP page
		RequestDispatcher dispatcher = request.getRequestDispatcher("/show-attendees.jsp");
		dispatcher.forward(request, response);
		
	}

}
