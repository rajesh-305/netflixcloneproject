<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%
    List<String> movies = (List<String>) request.getAttribute("movies");
    List<String> webSeries = (List<String>) request.getAttribute("webSeries");
    List<String> trending = (List<String>) request.getAttribute("trending");

    if (movies == null) {
        movies = List.of(
                "Inception",
                "Interstellar",
                "The Dark Knight",
                "Extraction",
                "The Gray Man",
                "Red Notice"
        );
    }

    if (webSeries == null) {
        webSeries = List.of(
                "Stranger Things",
                "Dark",
                "Money Heist",
                "Wednesday",
                "The Witcher",
                "Squid Game"
        );
    }

    if (trending == null) {
        trending = List.of(
                "3 Body Problem",
                "Lupin",
                "Peaky Blinders",
                "The Crown",
                "Narcos",
                "The Night Agent"
        );
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Netflix Clone</title>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
<header class="navbar">
    <div class="brand">NETFLIX</div>
    <nav>
        <a href="#">Home</a>
        <a href="#movies">Movies</a>
        <a href="#series">Web Series</a>
        <a href="#trending">Trending</a>
    </nav>
</header>

<section class="hero">
    <div class="overlay">
        <h1>Unlimited movies, web series and more.</h1>
        <p>Watch anywhere. Cancel anytime.</p>
        <button type="button">Watch Now</button>
    </div>
</section>

<main class="content">
    <section id="movies">
        <h2>Popular Movies</h2>
        <div class="card-row">
            <% for (String movie : movies) { %>
            <article class="card">
                <h3><%= movie %></h3>
                <p>Action / Thriller</p>
            </article>
            <% } %>
        </div>
    </section>

    <section id="series">
        <h2>Web Series</h2>
        <div class="card-row">
            <% for (String series : webSeries) { %>
            <article class="card">
                <h3><%= series %></h3>
                <p>Drama / Mystery</p>
            </article>
            <% } %>
        </div>
    </section>

    <section id="trending">
        <h2>Trending Now</h2>
        <div class="card-row">
            <% for (String item : trending) { %>
            <article class="card">
                <h3><%= item %></h3>
                <p>Top picks this week</p>
            </article>
            <% } %>
        </div>
    </section>
</main>

<footer>
    <p>Netflix-inspired demo app built with Java, JSP and Servlet.</p>
</footer>
</body>
</html>
