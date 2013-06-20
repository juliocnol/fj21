package br.com.patrickvillela;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HoraAtualServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try (PrintWriter ps = response.getWriter();) {
			ps.println("<html>");
			ps.println("<body>");
			ps.println(Calendar.getInstance().getTime());
			ps.println("</body");
			ps.println("</html>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
