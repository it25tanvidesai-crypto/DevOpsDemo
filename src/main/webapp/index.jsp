<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MovieHub | Movie & Event Booking</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            background: #f5f5f7;
            color: #222;
        }

        /* NAVBAR */
        nav {
            height: 70px;
            background: #17142b;
            color: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 7%;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            color: #ff3366;
            letter-spacing: 1px;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 15px;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: #ff3366;
        }

        .location {
            background: #292441;
            padding: 10px 15px;
            border-radius: 20px;
            font-size: 14px;
        }

        .user-btn {
            background: #ff3366;
            color: white;
            border: none;
            padding: 10px 18px;
            border-radius: 20px;
            cursor: pointer;
            font-weight: bold;
        }

        /* HERO */
        .hero {
            min-height: 480px;
            background: linear-gradient(135deg, #17142b, #39205f, #801f5c);
            color: white;
            padding: 80px 7%;
            display: flex;
            align-items: center;
        }

        .hero-content {
            max-width: 700px;
        }

        .hero small {
            color: #ff6688;
            font-weight: bold;
            letter-spacing: 2px;
        }

        .hero h1 {
            font-size: 55px;
            margin: 18px 0;
            line-height: 1.1;
        }

        .hero p {
            font-size: 18px;
            color: #ddd;
            line-height: 1.6;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 15px;
        }

        .primary-btn {
            background: #ff3366;
            color: white;
            border: none;
            padding: 14px 25px;
            border-radius: 8px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
        }

        .secondary-btn {
            background: transparent;
            color: white;
            border: 1px solid #aaa;
            padding: 14px 25px;
            border-radius: 8px;
            font-size: 15px;
            cursor: pointer;
        }

        .primary-btn:hover,
        .user-btn:hover {
            background: #e52d5d;
        }

        /* SEARCH */
        .search-section {
            margin: -30px auto 40px;
            width: 80%;
            background: white;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.12);
            position: relative;
        }

        .search-box {
            width: 100%;
            padding: 15px 18px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            outline: none;
        }

        .search-box:focus {
            border-color: #ff3366;
        }

        /* SECTION */
        .section {
            width: 86%;
            margin: 60px auto;
        }

        .section-title {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }

        .section-title h2 {
            font-size: 30px;
            color: #17142b;
        }

        .section-title a {
            color: #ff3366;
            text-decoration: none;
            font-weight: bold;
        }

        /* MOVIES */
        .movie-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 25px;
        }

        .movie-card {
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            transition: 0.3s;
        }

        .movie-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .movie-poster {
            height: 230px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #241b43, #70204f);
            color: white;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            padding: 20px;
        }

        .movie-info {
            padding: 18px;
        }

        .movie-info h3 {
            margin-bottom: 8px;
        }

        .rating {
            color: #ff3366;
            font-weight: bold;
            margin-bottom: 12px;
        }

        .movie-info button {
            width: 100%;
            border: none;
            background: #17142b;
            color: white;
            padding: 10px;
            border-radius: 6px;
            cursor: pointer;
        }

        .movie-info button:hover {
            background: #ff3366;
        }

        /* OFFERS */
        .offer-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .offer {
            padding: 30px;
            border-radius: 12px;
            color: white;
            background: linear-gradient(135deg, #17142b, #70204f);
        }

        .offer h3 {
            font-size: 22px;
            margin-bottom: 10px;
        }

        .offer p {
            color: #ddd;
            line-height: 1.5;
        }

        /* BOOKING */
        .booking-section {
            width: 86%;
            margin: 70px auto;
            background: white;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.08);
        }

        .booking-section h2 {
            text-align: center;
            font-size: 32px;
            margin-bottom: 10px;
            color: #17142b;
        }

        .booking-section > p {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        .booking-form {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            font-weight: bold;
            margin-bottom: 8px;
            color: #333;
        }

        .form-group input,
        .form-group select {
            padding: 13px;
            border: 1px solid #ddd;
            border-radius: 7px;
            font-size: 15px;
            background: white;
        }

        .form-group input:focus,
        .form-group select:focus {
            outline: none;
            border-color: #ff3366;
        }

        .booking-button {
            grid-column: 1 / -1;
            background: #ff3366;
            color: white;
            border: none;
            padding: 15px;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .booking-button:hover {
            background: #e52d5d;
        }

        #message {
            grid-column: 1 / -1;
            text-align: center;
            padding: 15px;
            margin-top: 5px;
            border-radius: 8px;
            font-weight: bold;
            color: #198754;
            background: #e9f8ef;
            display: none;
        }

        /* FEATURES */
        .feature-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 25px;
        }

        .feature {
            background: white;
            padding: 30px 20px;
            text-align: center;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.06);
        }

        .feature-icon {
            font-size: 30px;
            margin-bottom: 15px;
        }

        .feature h3 {
            margin-bottom: 10px;
        }

        .feature p {
            color: #777;
            line-height: 1.5;
        }

        /* CTA */
        .cta {
            width: 86%;
            margin: 70px auto;
            padding: 55px;
            border-radius: 15px;
            text-align: center;
            color: white;
            background: linear-gradient(135deg, #17142b, #70204f);
        }

        .cta h2 {
            font-size: 35px;
            margin-bottom: 15px;
        }

        .cta p {
            color: #ddd;
            margin-bottom: 25px;
        }

        /* HELP */
        .help {
            text-align: center;
            padding: 50px 20px;
        }

        .help h2 {
            font-size: 30px;
            margin-bottom: 12px;
        }

        .help p {
            color: #777;
            margin-bottom: 20px;
        }

        /* FOOTER */
        footer {
            background: #17142b;
            color: white;
            padding: 45px 7%;
            margin-top: 60px;
        }

        .footer-content {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
        }

        .footer-content h3 {
            margin-bottom: 15px;
        }

        .footer-content p {
            color: #aaa;
            line-height: 1.6;
        }

        .footer-content a {
            display: block;
            color: #aaa;
            text-decoration: none;
            margin-bottom: 10px;
        }

        .footer-content a:hover {
            color: #ff3366;
        }

        .copyright {
            border-top: 1px solid #333;
            margin-top: 30px;
            padding-top: 20px;
            text-align: center;
            color: #888;
        }

        /* RESPONSIVE */
        @media (max-width: 1000px) {

            .nav-links {
                display: none;
            }

            .movie-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .feature-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .footer-content {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 700px) {

            .hero h1 {
                font-size: 40px;
            }

            .movie-grid,
            .offer-grid,
            .feature-grid,
            .booking-form,
            .footer-content {
                grid-template-columns: 1fr;
            }

            .search-section,
            .section,
            .booking-section,
            .cta {
                width: 92%;
            }

            .booking-section {
                padding: 25px;
            }

            .cta {
                padding: 35px 20px;
            }
        }
    </style>
</head>

<body>

<!-- NAVBAR -->
<nav>

    <div class="logo">MovieHub</div>

    <div class="nav-links">
        <a href="#home">Home</a>
        <a href="#movies">Movies</a>
        <a href="#events">Events</a>
        <a href="#offers">Offers</a>
        <a href="#booking">Book Tickets</a>
        <a href="#help">Help</a>
    </div>

    <div style="display:flex; gap:10px; align-items:center;">
        <div class="location">Mumbai</div>
        <button class="user-btn">User</button>
    </div>

</nav>


<!-- HERO -->
<section class="hero" id="home">

    <div class="hero-content">

        <small>YOUR ENTERTAINMENT DESTINATION</small>

        <h1>
            Movies, Events & Experiences
        </h1>

        <p>
            Discover the latest movies, book your favourite seats,
            explore exciting events and enjoy entertainment with MovieHub.
        </p>

        <div class="hero-buttons">

            <button class="primary-btn"
                    onclick="document.getElementById('booking').scrollIntoView()">
                Book Tickets
            </button>

            <button class="secondary-btn"
                    onclick="document.getElementById('movies').scrollIntoView()">
                Explore Movies
            </button>

        </div>

    </div>

</section>


<!-- SEARCH -->
<div class="search-section">

    <input
        type="text"
        id="search"
        class="search-box"
        placeholder="Search for movies, events or experiences..."
    >

</div>


<!-- MOVIES -->
<section class="section" id="movies">

    <div class="section-title">

        <h2>Popular Movies</h2>

        <a href="#booking">View All</a>

    </div>


    <div class="movie-grid">

        <div class="movie-card">

            <div class="movie-poster">
                Avengers
            </div>

            <div class="movie-info">

                <h3>Avengers</h3>

                <div class="rating">
                    Rating: 4.8/5
                </div>

                <button onclick="selectMovie('Avengers')">
                    Book Tickets
                </button>

            </div>

        </div>


        <div class="movie-card">

            <div class="movie-poster">
                Inception
            </div>

            <div class="movie-info">

                <h3>Inception</h3>

                <div class="rating">
                    Rating: 4.7/5
                </div>

                <button onclick="selectMovie('Inception')">
                    Book Tickets
                </button>

            </div>

        </div>


        <div class="movie-card">

            <div class="movie-poster">
                Interstellar
            </div>

            <div class="movie-info">

                <h3>Interstellar</h3>

                <div class="rating">
                    Rating: 4.9/5
                </div>

                <button onclick="selectMovie('Interstellar')">
                    Book Tickets
                </button>

            </div>

        </div>


        <div class="movie-card">

            <div class="movie-poster">
                Movie Night
            </div>

            <div class="movie-info">

                <h3>Movie Night</h3>

                <div class="rating">
                    Rating: 4.6/5
                </div>

                <button onclick="selectMovie('Movie Night')">
                    Book Tickets
                </button>

            </div>

        </div>

    </div>

</section>


<!-- OFFERS -->
<section class="section" id="offers">

    <div class="section-title">
        <h2>Exciting Offers</h2>
    </div>


    <div class="offer-grid">

        <div class="offer">

            <h3>First Booking</h3>

            <p>
                Get special benefits and discounts on your first booking.
            </p>

        </div>


        <div class="offer">

            <h3>Weekend Offer</h3>

            <p>
                Enjoy exciting weekend deals on selected movies and shows.
            </p>

        </div>


        <div class="offer">

            <h3>Group Booking</h3>

            <p>
                Book tickets together and enjoy special group benefits.
            </p>

        </div>

    </div>

</section>


<!-- BOOKING -->
<section class="booking-section" id="booking">

    <h2>Book Your Tickets</h2>

    <p>
        Select your movie, city, date and show time.
    </p>


    <div class="booking-form">

        <div class="form-group">

            <label for="movie">
                Select Movie
            </label>

            <select id="movie">

                <option value="">
                    Choose a movie
                </option>

                <option value="Avengers">
                    Avengers
                </option>

                <option value="Inception">
                    Inception
                </option>

                <option value="Interstellar">
                    Interstellar
                </option>

                <option value="Movie Night">
                    Movie Night
                </option>

            </select>

        </div>


        <div class="form-group">

            <label for="city">
                Select City
            </label>

            <select id="city">

                <option value="">
                    Choose a city
                </option>

                <option value="Mumbai">
                    Mumbai
                </option>

                <option value="Pune">
                    Pune
                </option>

                <option value="Delhi">
                    Delhi
                </option>

                <option value="Bangalore">
                    Bangalore
                </option>

            </select>

        </div>


        <div class="form-group">

            <label for="date">
                Booking Date
            </label>

            <input
                type="date"
                id="date"
            >

        </div>


        <div class="form-group">

            <label for="show">
                Show Time
            </label>

            <select id="show">

                <option value="">
                    Choose show time
                </option>

                <option value="10:00 AM">
                    10:00 AM
                </option>

                <option value="1:00 PM">
                    1:00 PM
                </option>

                <option value="4:00 PM">
                    4:00 PM
                </option>

                <option value="7:00 PM">
                    7:00 PM
                </option>

                <option value="10:00 PM">
                    10:00 PM
                </option>

            </select>

        </div>


        <div class="form-group">

            <label for="tickets">
                Number of Tickets
            </label>

            <input
                type="number"
                id="tickets"
                min="1"
                max="10"
                placeholder="Enter tickets"
            >

        </div>


        <button
            class="booking-button"
            id="bookButton"
            onclick="bookTicket()">

            Confirm Booking

        </button>


        <div id="message"></div>

    </div>

</section>


<!-- FEATURES -->
<section class="section">

    <div class="section-title">
        <h2>Why MovieHub?</h2>
    </div>


    <div class="feature-grid">

        <div class="feature">

            <div class="feature-icon">
                Booking
            </div>

            <h3>Easy Booking</h3>

            <p>
                Book your favourite movies quickly and easily.
            </p>

        </div>


        <div class="feature">

            <div class="feature-icon">
                Secure
            </div>

            <h3>Secure Payments</h3>

            <p>
                Your booking information is handled securely.
            </p>

        </div>


        <div class="feature">

            <div class="feature-icon">
                Device
            </div>

            <h3>Any Device</h3>

            <p>
                Access MovieHub from desktop, tablet or mobile.
            </p>

        </div>


        <div class="feature">

            <div class="feature-icon">
                Movies
            </div>

            <h3>Latest Movies</h3>

            <p>
                Explore popular movies and exciting experiences.
            </p>

        </div>

    </div>

</section>


<!-- EVENTS -->
<section class="cta" id="events">

    <h2>Discover Exciting Events</h2>

    <p>
        From movies to live entertainment, discover experiences
        that make your day special.
    </p>

    <button
        class="primary-btn"
        onclick="document.getElementById('booking').scrollIntoView()">

        Explore Now

    </button>

</section>


<!-- HELP -->
<section class="help" id="help">

    <h2>Need Help?</h2>

    <p>
        Have questions about booking or tickets?
        Our help center is here for you.
    </p>

    <button
        class="primary-btn"
        onclick="alert('Welcome to MovieHub Help Center!')">

        Visit Help Center

    </button>

</section>


<!-- FOOTER -->
<footer>

    <div class="footer-content">

        <div>

            <h3>MovieHub</h3>

            <p>
                Your entertainment destination for movies,
                events and unforgettable experiences.
            </p>

        </div>


        <div>

            <h3>Company</h3>

            <a href="#home">About Us</a>
            <a href="#help">Contact</a>
            <a href="#help">Help Center</a>

        </div>


        <div>

            <h3>Explore</h3>

            <a href="#movies">Movies</a>
            <a href="#events">Events</a>
            <a href="#offers">Offers</a>

        </div>


        <div>

            <h3>Support</h3>

            <a href="#help">FAQs</a>
            <a href="#help">Booking Help</a>
            <a href="#help">Terms & Conditions</a>

        </div>

    </div>


    <div class="copyright">

        © 2026 MovieHub. All Rights Reserved.

    </div>

</footer>


<!-- JAVASCRIPT -->
<script>

    function selectMovie(movieName) {

        document.getElementById("movie").value = movieName;

        document.getElementById("booking").scrollIntoView({
            behavior: "smooth"
        });

    }


    function bookTicket() {

        const movie =
            document.getElementById("movie").value;

        const city =
            document.getElementById("city").value;

        const date =
            document.getElementById("date").value;

        const show =
            document.getElementById("show").value;

        const tickets =
            document.getElementById("tickets").value;

        const message =
            document.getElementById("message");


        if (
            movie === "" ||
            city === "" ||
            date === "" ||
            show === "" ||
            tickets === ""
        ) {

            message.style.display = "block";
            message.style.color = "#dc3545";
            message.style.background = "#fdeaea";

            message.innerHTML =
                "Please fill all booking details.";

            return;

        }


        message.style.display = "block";
        message.style.color = "#198754";
        message.style.background = "#e9f8ef";

        message.innerHTML =
            "Booking Confirmed! " +
            tickets +
            " ticket(s) for " +
            movie +
            " in " +
            city +
            " at " +
            show +
            ".";

    }


    // Search functionality
    document.getElementById("search").addEventListener(
        "keyup",
        function() {

            const searchText =
                this.value.toLowerCase();

            const cards =
                document.querySelectorAll(".movie-card");


            cards.forEach(function(card) {

                const movieName =
                    card.querySelector("h3")
                        .innerText
                        .toLowerCase();

                if (movieName.includes(searchText)) {

                    card.style.display = "block";

                } else {

                    card.style.display = "none";

                }

            });

        }
    );

</script>

</body>
</html>