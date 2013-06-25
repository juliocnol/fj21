package br.com.patrickvillela.mvc.logica;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AlteraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		Contato contato = new Contato();
		
		String id = req.getParameter("id");
		contato.setId(Long.parseLong(id));
		
		contato.setNome(req.getParameter("nome"));
		contato.setEndereco(req.getParameter("endereco"));
		contato.setEmail(req.getParameter("email"));
		
		String dataEmTexto = req.getParameter("dataNascimento");
		DateTimeFormatter dtf = DateTimeFormat.forPattern("dd/MM/yyyy");
		DateTime date = dtf.parseDateTime(dataEmTexto);
		contato.setDataNascimento(date);

		Connection connection = (Connection) req.getAttribute("connection");
		ContatoDao dao = new ContatoDao(connection);
		dao.atualiza(contato);
		
		System.out.println("Alterando contato..." + contato.getNome());
		return "/listaContatoServlet";
	}
}
