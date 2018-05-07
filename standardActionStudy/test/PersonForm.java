package standardActionStudy.test;

import java.io.IOException;
import java.io.Serializable;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PersonForm extends HttpServlet implements Serializable {

	private static final long serialVersionUID = -554559048685238184L;
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		
		execute(request, response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		
		execute(request, response);
	}
	
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/standardActionStudy/7personForm.jsp");
		
		dispatcher.forward(request, response);
		
	}
	
}
