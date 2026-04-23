package com.ls.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/benvenuto")
public class BenvenutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int contatore = 0;

    public BenvenutoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		contatore++;
		
		String nome = request.getParameter("nome");
		
		if (nome == null || nome.isBlank()) {
		    nome = "ospite";
		}
		
		response.setContentType("text/html");

		response.getWriter().println("<html><body>");
		response.getWriter().println("<h1>Ciao, " + nome + "! Questa è la mia prima Servlet.</h1>");
	    response.getWriter().println("<p>Numero chiamate: " + contatore + "</p>");
		response.getWriter().println("</body></html>");
	}
	
	@Override
	public void init() throws ServletException {
	    System.out.println(">>> INIT: Servlet BenvenutoServlet inizializzata");
	}
	
	@Override
	public void destroy() {
	    System.out.println(">>> DESTROY: Servlet BenvenutoServlet distrutta");
	}

}
