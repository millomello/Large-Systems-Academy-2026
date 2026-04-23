package com.ls.servlet;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/utente")
public class ContatoreUtenteServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        HttpSession session = request.getSession();

        Integer contatore = (Integer) session.getAttribute("contatoreUtente");

        if (contatore == null) {
            contatore = 0;
        }

        contatore++;

        session.setAttribute("contatoreUtente", contatore);

        response.getWriter().println(
            "Hai visitato questa pagina " + contatore + " volte."
        );
    }

}
