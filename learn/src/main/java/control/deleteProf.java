package control;
import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CUSERDAO;


@WebServlet("/delprofservlet")
public class deleteProf  extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 public deleteProf() {
	       super();
	    }
	  
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			if (request.getSession().getAttribute("admin") != null) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/profListe.jsp");
				dispatcher.include(request, response);
			} /*else {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/login.jsp");
				dispatcher.include(request, response);
			}*/
			
			 
		}

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			CUSERDAO adminDAO=new CUSERDAO();
			  
			  int id = Integer.parseInt(request.getParameter("did")); // DONT FORGET KI TA7TAJIH MBA3DD
			  if(id>=0) {
			    try {
					adminDAO.delPro(id);
				} catch (InstantiationException | IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			   
			   response.sendRedirect("http://localhost:8080/WEB-INF/admin.jsp#extensions");
			  // this.getServletContext().getRequestDispatcher("/WEB-INF/admin.jsp#extensions").include(request, response);
			  }

	}

	}
