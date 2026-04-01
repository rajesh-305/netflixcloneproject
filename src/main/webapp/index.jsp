<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%
    List<String> movies = (List<String>) request.getAttribute("movies");
    List<String> webSeries = (List<String>) request.getAttribute("webSeries");
    List<String> trending = (List<String>) request.getAttribute("trending");

    List<String> moviePosters = List.of(
        "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1509347528160-9a9e33742cdb?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1440404653325-ab127d49abc1?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?auto=format&fit=crop&w=800&q=80"
    );

    List<String> seriesPosters = List.of(
        "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1522120692535-7c2f6f2f3f1d?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1485095329183-d0797cdc5676?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1518929458113-49f0b8f8a8d0?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1511884642898-4c92249e20b6?auto=format&fit=crop&w=800&q=80"
    );

    List<String> trendingPosters = List.of(
        "https://images.unsplash.com/photo-1478720568477-152d9b164e26?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1501386761578-eac5c94b800a?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1505685296765-3a2736de412f?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1533153993872-6a9e1b3d8f47?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=800&q=80",
        "https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?auto=format&fit=crop&w=800&q=80"
    );

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
    <title>StreamFlix</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=DM+Sans:wght@400;500;700;800&display=swap" rel="stylesheet" />
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
    <div class="hero-copy">
        <span class="eyebrow">Now Streaming</span>
        <h1>Unlimited movies, web series, and originals.</h1>
        <p>Stream bold stories, premium visuals, and trending titles built for every screen.</p>
        <div class="hero-actions">
            <button type="button">Watch Now</button>
            <a class="ghost-button" href="#movies">Browse Titles</a>
        </div>
        <div class="hero-stats">
            <div>
                <strong>4K</strong>
                <span>Ultra HD</span>
            </div>
            <div>
                <strong>100+</strong>
                <span>Popular Picks</span>
            </div>
            <div>
                <strong>24/7</strong>
                <span>Always Available</span>
            </div>
        </div>
    </div>
    <div class="hero-feature">
        <img src="https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?auto=format&fit=crop&w=1000&q=80" alt="Cinematic feature artwork" />
        <div class="hero-feature-card">
            <span class="feature-tag">Featured Tonight</span>
            <h2>Night Watch</h2>
            <p>Fast-paced action, moody visuals, and the kind of tension that keeps you watching.</p>
        </div>
    </div>
</section>

<main class="content">
    <section id="movies">
        <h2>Popular Movies</h2>
        <div class="card-row">
            <% for (int i = 0; i < movies.size(); i++) { %>
            <article class="card">
                <img class="card-poster" src="<%= moviePosters.get(i % moviePosters.size()) %>" alt="<%= movies.get(i) %> poster" loading="lazy" />
                <div class="card-body">
                    <h3><%= movies.get(i) %></h3>
                    <p>Action / Thriller</p>
                </div>
            </article>
            <% } %>
        </div>
    </section>

    <section id="series">
        <h2>Web Series</h2>
        <div class="card-row">
            <% for (int i = 0; i < webSeries.size(); i++) { %>
            <article class="card">
                <img class="card-poster" src="<%= seriesPosters.get(i % seriesPosters.size()) %>" alt="<%= webSeries.get(i) %> poster" loading="lazy" />
                <div class="card-body">
                    <h3><%= webSeries.get(i) %></h3>
                    <p>Drama / Mystery</p>
                </div>
            </article>
            <% } %>
        </div>
    </section>

    <section id="trending">
        <h2>Trending Now</h2>
        <div class="card-row">
            <% for (int i = 0; i < trending.size(); i++) { %>
            <article class="card">
                <img class="card-poster" src="<%= trendingPosters.get(i % trendingPosters.size()) %>" alt="<%= trending.get(i) %> poster" loading="lazy" />
                <div class="card-body">
                    <h3><%= trending.get(i) %></h3>
                    <p>Top picks this week</p>
                </div>
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
