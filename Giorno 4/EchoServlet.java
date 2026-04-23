package com.ls.servlet;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/echo")
public class EchoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        String testo = request.getParameter("testo");

        request.setAttribute("testoScope", testo);

        response.getWriter().println(
            "Testo ricevuto (REQUEST scope): " + request.getAttribute("testoScope")
        );
    }
}
