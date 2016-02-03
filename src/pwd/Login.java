
package pwd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
//	if (combo.isPasswordValid()) {
//	session.setAttribute("login", "true");
//	response.sendRedirect("Success.jsp");
//} else {
//	session.setAttribute("login", "false");
//	getServletContext().getRequestDispatcher("/").forward(request, response);
//}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String r = request.getParameter("rate");
		String t = request.getParameter("time");
		String d = request.getParameter("distance");
		String option = request.getParameter("item");
		HttpSession session = request.getSession();
		
		if (option.equals("rate")) {
			double distance = Double.valueOf(d);
			double time = Double.valueOf(t);
			double rate = distance / time;
			session.setAttribute("result", rate);

		} else if (option.equals("time")) {
			double rate = Double.valueOf(r);
			double distance = Double.valueOf(d);
			double time = distance / rate;
			session.setAttribute("result", time);

		} else if (option.equals("distance")) {
			double rate = Double.valueOf(r);
			double time = Double.valueOf(t);
			double distance = rate * time;
			session.setAttribute("result", distance);
		} else {
			session.setAttribute("result", "error");
		}
		
		
		
//		if (combo.isPasswordValid()) {
//		session.setAttribute("login", "true");
//		response.sendRedirect("Success.jsp");
//	} else {
//		session.setAttribute("login", "false");
//		getServletContext().getRequestDispatcher("/").forward(request, response);
//	}

		
		
		getServletContext().getRequestDispatcher("/").forward(request, response);

		
//		if (combo.isPasswordValid()) {
//			session.setAttribute("login", "true");
//			response.sendRedirect("Success.jsp");
//		} else {
//			session.setAttribute("login", "false");
//			getServletContext().getRequestDispatcher("/").forward(request, response);
//		}

		
	}

}
