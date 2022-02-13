package control;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CUSERDAO;
import model.createAccount;

@WebServlet("/UpdateProf")

public class updateProf  extends HttpServlet{
	private static final long serialVersionUID = 1L;
	 public updateProf() {
	       super();
	    }
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			if (request.getSession().getAttribute("admin") != null) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/admin.jsp");
				dispatcher.include(request, response);
			} /*else {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/login.jsp");
				dispatcher.include(request, response);
			}*/
			
			 
		}
	 

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		createAccount ens =new createAccount(request);
	ens.setIdprof(Integer.parseInt(request.getParameter("id")));
	
	CUSERDAO userDAO =new CUSERDAO();
	 userDAO.updateProf(ens);
	 } catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
	PrintWriter out = response.getWriter();		
	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/admin.jsp");
	dispatcher.include(request, response);

	out.print("<center><h2> The teacher infos are  updated successfully <h2>");
	 
}
}
