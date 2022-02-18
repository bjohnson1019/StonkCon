package com.luv2code.web.jdbc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class AttendeeDbUtil {
	
	private DataSource dataSource;
	
	public AttendeeDbUtil(DataSource theDataSource) {
		
		dataSource = theDataSource;
		
	}
	
	public List<Attendee> getAttendees() throws Exception {
		
		List<Attendee> attendees = new ArrayList<>();
		
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			// get a connection 
			myConn = dataSource.getConnection();
		
			// create sql statement
			String sql = "select * from attendee order by last_name";
			myStmt = myConn.createStatement();
		
			//execute query
			myRs = myStmt.executeQuery(sql);
		
			//process result set
			while (myRs.next()) {
				
				//retrieve data from result set row
				int id = myRs.getInt("id");
				String firstName = myRs.getString("first_name");
				String lastName = myRs.getString("last_name");
				String email = myRs.getString("email");
				
				//create new attendee object
				Attendee tempAttendee = new Attendee(id, firstName, lastName, email);
				
				//add it to list of students
				attendees.add(tempAttendee);
				
			}
					
			return attendees;
			
		}
		finally {			
			//close JDBC objects
			close(myConn, myStmt, myRs);
			
			
		}		
		
	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
		
		try {
			if (myRs != null) {
				myRs.close();
			}
			if (myStmt != null) {
				myStmt.close();
			}
			if (myConn != null) {
				myConn.close();
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
		
	}
	

}