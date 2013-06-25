package br.com.patrickvillela.mvc.logica;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrimeiraLogica implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		System.out.println("Executando a lógica...");
		System.out.println("Redirecionando para o JSP...");
		return "/primeira-logica.jsp";
	}

}
