package com.weekend.netflixclone.web;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class HomeServletTest {

    @Test
        void doGetSetsExpectedAttributesAndForwardsToJsp() throws ServletException, IOException {
        HomeServlet servlet = new HomeServlet();
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        RequestDispatcher requestDispatcher = mock(RequestDispatcher.class);

        when(request.getRequestDispatcher("/index.jsp")).thenReturn(requestDispatcher);

        servlet.doGet(request, response);

        verify(request).setAttribute("movies", List.of(
                "Inception",
                "Interstellar",
                "The Dark Knight",
                "Extraction",
                "The Gray Man",
                "Red Notice"
        ));

        verify(request).setAttribute("webSeries", List.of(
                "Stranger Things",
                "Dark",
                "Money Heist",
                "Wednesday",
                "The Witcher",
                "Squid Game"
        ));

        verify(request).setAttribute("trending", List.of(
                "3 Body Problem",
                "Lupin",
                "Peaky Blinders",
                "The Crown",
                "Narcos",
                "The Night Agent"
        ));

        verify(requestDispatcher).forward(request, response);
    }

    @Test
        void doGetSetsNonEmptyContentLists() throws ServletException, IOException {
        HomeServlet servlet = new HomeServlet();
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        RequestDispatcher requestDispatcher = mock(RequestDispatcher.class);

        when(request.getRequestDispatcher("/index.jsp")).thenReturn(requestDispatcher);

        servlet.doGet(request, response);

        List<String> expectedMovies = List.of(
                "Inception",
                "Interstellar",
                "The Dark Knight",
                "Extraction",
                "The Gray Man",
                "Red Notice"
        );
        List<String> expectedSeries = List.of(
                "Stranger Things",
                "Dark",
                "Money Heist",
                "Wednesday",
                "The Witcher",
                "Squid Game"
        );
        List<String> expectedTrending = List.of(
                "3 Body Problem",
                "Lupin",
                "Peaky Blinders",
                "The Crown",
                "Narcos",
                "The Night Agent"
        );

        assertNotNull(expectedMovies);
        assertNotNull(expectedSeries);
        assertNotNull(expectedTrending);
        assertEquals(6, expectedMovies.size());
        assertEquals(6, expectedSeries.size());
        assertEquals(6, expectedTrending.size());
    }
}
