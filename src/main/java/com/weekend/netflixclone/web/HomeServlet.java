package com.weekend.netflixclone.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> movies = List.of(
                "Inception",
                "Interstellar",
                "The Dark Knight",
                "Extraction",
                "The Gray Man",
                "Red Notice"
        );

        List<String> webSeries = List.of(
                "Stranger Things",
                "Dark",
                "Money Heist",
                "Wednesday",
                "The Witcher",
                "Squid Game"
        );

        List<String> trending = List.of(
                "3 Body Problem",
                "Lupin",
                "Peaky Blinders",
                "The Crown",
                "Narcos",
                "The Night Agent"
        );

        req.setAttribute("movies", movies);
        req.setAttribute("webSeries", webSeries);
        req.setAttribute("trending", trending);

        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
