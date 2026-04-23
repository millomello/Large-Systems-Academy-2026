package com.ls.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/info")
public class InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public InfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        String metodo = request.getMethod();
        String url = request.getRequestURL().toString();

        response.getWriter().println("<html><body>");

        response.getWriter().println("<h2>Info richiesta</h2>");

        response.getWriter().println("<p><b>Metodo HTTP:</b> " + metodo + "</p>");
        response.getWriter().println("<p><b>URL:</b> " + url + "</p>");

        response.getWriter().println("<h3>Parametri:</h3>");

        java.util.Enumeration<String> params = request.getParameterNames();

        while (params.hasMoreElements()) {
            String name = params.nextElement();
            String value = request.getParameter(name);

            response.getWriter().println("<p>" + name + " = " + value + "</p>");
        }

        response.getWriter().println("</body></html>");
    }

}
