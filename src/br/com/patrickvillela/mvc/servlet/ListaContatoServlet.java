package br.com.patrickvillela.mvc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

/**
 * Servlet implementation class AlteraContatoServlet
 */
@WebServlet("/listaContatoServlet")
public class ListaContatoServlet extends HttpServlet {

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection connection = (Connection) request.getAttribute("connection");
		ContatoDao dao = new ContatoDao(connection);
		List<Contato> contatos = dao.getLista();
		request.setAttribute("lista", contatos);
		RequestDispatcher rd = request.getRequestDispatcher("/listaContatos.jsp");
		rd.forward(request, response);
	}

}
