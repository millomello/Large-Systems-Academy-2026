package com.ls.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ls.model.Prodotto;

/**
 * Servlet implementation class ProdottiServlet
 */
@WebServlet("/ProdottiServlet")
public class ProdottiServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Prodotto> lista = new ArrayList<>();

        lista.add(crea("Penna", 2.5, true));
        lista.add(crea("Quaderno", 5.0, true));
        lista.add(crea("Zaino", 45.0, false));
        lista.add(crea("Mouse", 15.0, true));
        lista.add(crea("Laptop", 900.0, true));

        double totale = 0;
        for (Prodotto p : lista) {
            totale += p.getPrezzo();
        }
        double media = totale / lista.size();

        request.setAttribute("prodotti", lista);
        request.setAttribute("totale", totale);
        request.setAttribute("media", media);

        RequestDispatcher rd = request.getRequestDispatcher("lista-prodotti.jsp");
        rd.forward(request, response);
    }

    private Prodotto crea(String nome, double prezzo, boolean disp) {
        Prodotto p = new Prodotto();
        p.setNome(nome);
        p.setPrezzo(prezzo);
        p.setDisponibile(disp);
        return p;
    }
}
