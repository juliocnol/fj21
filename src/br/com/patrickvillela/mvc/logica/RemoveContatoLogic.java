package br.com.patrickvillela.mvc.logica;

import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class RemoveContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		Contato contato = new Contato();
		String id = req.getParameter("id");
		contato.setId(Long.parseLong(id));

		Connection connection = (Connection) req.getAttribute("connection");
		ContatoDao dao = new ContatoDao(connection);
		dao.exclui(contato);
		
		System.out.println("Excluindo contato..." + contato.getId());
		return "/listaContatoServlet";
	}

}
