<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - Culture Drop</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="icon" href="logoWhite.png" type="icon/x-image">
    <style>
    :root{
        --primary: #cb2111;
        --secondary: #fc2525;
        --dark: #1a1a2e;
        --light: #f8f9fa;
        --accent: #ffd700;
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Montserrat', sans-serif;
    }

    body {
        display: flex;
        min-height: 100vh;
        background: #f5f5f5;
        background: linear-gradient(rgba(0, 0, 0, 0.85), rgba(0, 0, 0, 0.85)), url('mahdi-soheili-1UfPaDcmUAI-unsplash.jpg');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        animation: fadeIn 1s ease-in-out;
    }

    nav {
        width: 250px;
        background: rgba(0, 0, 0, 0.95);
        backdrop-filter: blur(15px);
        -webkit-backdrop-filter: blur(15px);
        box-shadow: 5px 0 30px rgba(0, 0, 0, 0.3);
        border-right: 1px solid rgba(255, 255, 255, 0.1);
        display: flex;
        flex-direction: column;
        padding: 30px 0;
        height: 100vh;
        position: fixed;
        left: 0;
        top: 0;
        z-index: 1000;
        transition: all 0.3s ease;
    }

    .logo-container {
        padding: 40px 20px 20px;
        border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        margin-bottom: 20px;
        margin-top: -5px;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 12px;
        text-align: center;
        position: relative;
        overflow: hidden;
    }

    .logo-container::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 2px;
        background: linear-gradient(90deg, transparent, var(--accent), transparent);
        animation: shimmer 2s infinite;
    }

    @keyframes shimmer {
        0% { transform: translateX(-100%); }
        100% { transform: translateX(100%); }
    }

    .logo-container img {
        height: 85px;
        transition: transform 0.3s;
        max-width: 100%;
        object-fit: contain;
    }

    .logo-container img:hover {
        transform: scale(1.05);
    }

    .logo-text {
        font-family: 'Montserrat', sans-serif;
        color: white;
        font-size: 20px;
        font-weight: 600;
        letter-spacing: 2px;
        text-align: center;
        text-transform: uppercase;
        animation: glow 2s ease-in-out infinite alternate;
        margin-top: 5px;
    }

    @keyframes glow {
        from {
            text-shadow: 0 0 5px rgba(255, 255, 255, 0.5);
        }
        to {
            text-shadow: 0 0 20px rgba(255, 255, 255, 0.8);
        }
    }

    .nav-section {
        padding: 0 20px;
        margin-bottom: 30px;
        transition: all 0.3s ease;
    }

    .nav-title {
        color: rgba(255, 255, 255, 0.6);
        font-size: 12px;
        text-transform: uppercase;
        letter-spacing: 2px;
        margin-bottom: 15px;
        padding: 0 10px;
        text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
    }

    ul {
        list-style-type: none;
    }

    ul li {
        margin-bottom: 8px;
    }

    a {
        display: block;
        text-decoration: none;
        color: white;
        font-size: 14px;
        letter-spacing: 1px;
        font-weight: 500;
        padding: 12px 15px;
        border-radius: 8px;
        transition: all 0.3s ease;
        position: relative;
        overflow: hidden;
    }

    a:hover {
        background: rgba(255, 255, 255, 0.1);
        transform: translateX(5px);
    }

    a::before {
        content: '';
        position: absolute;
        left: 0;
        top: 0;
        width: 3px;
        height: 100%;
        background: linear-gradient(to bottom, var(--primary), var(--secondary));
        opacity: 0;
        transition: opacity 0.3s;
    }

    a:hover::before {
        opacity: 1;
    }

    main {
        margin-left: 250px;
        padding: 40px;
        flex: 1;
        animation: slideIn 0.5s ease-out;
    }

    @keyframes slideIn {
        0% { transform: translateX(100%); opacity: 0; }
        100% { transform: translateX(0); opacity: 1; }
    }

    .profile-section {
        background: rgba(255, 255, 255, 0.1);
        backdrop-filter: blur(15px);
        border-radius: 15px;
        padding: 2rem;
        margin-bottom: 30px;
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        border: 1px solid rgba(255, 255, 255, 0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .profile-section:hover {
        transform: translateY(-5px);
        box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
    }

    .profile-header {
        display: flex;
        align-items: center;
        gap: 30px;
        margin-bottom: 40px;
        padding-bottom: 20px;
        border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    }

    .profile-avatar {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        overflow: hidden;
        border: 3px solid var(--accent);
        box-shadow: 0 0 20px rgba(255, 215, 0, 0.3);
    }

    .profile-avatar img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .profile-info {
        flex: 1;
    }

    .profile-name {
        color: white;
        font-size: 2rem;
        margin-bottom: 10px;
        text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
    }

    .profile-email {
        color: rgba(255, 255, 255, 0.8);
        font-size: 1.1rem;
        margin-bottom: 20px;
    }

    .profile-stats {
        display: flex;
        gap: 30px;
    }

    .stat-item {
        text-align: center;
    }

    .stat-value {
        color: var(--accent);
        font-size: 1.5rem;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .stat-label {
        color: rgba(255, 255, 255, 0.7);
        font-size: 0.9rem;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .profile-content {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 30px;
    }

    .profile-section-title {
        color: white;
        font-size: 1.5rem;
        margin-bottom: 20px;
        text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
        position: relative;
        padding-bottom: 10px;
    }

    .profile-section-title::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 50px;
        height: 3px;
        background: linear-gradient(90deg, var(--primary), var(--secondary));
        border-radius: 3px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;
        color: rgba(255, 255, 255, 0.8);
        margin-bottom: 8px;
        font-size: 0.9rem;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .form-group input {
        width: 100%;
        padding: 12px;
        background: rgba(255, 255, 255, 0.1);
        border: 1px solid rgba(255, 255, 255, 0.2);
        border-radius: 8px;
        color: white;
        font-size: 1rem;
        transition: all 0.3s ease;
    }

    .form-group input:focus {
        outline: none;
        border-color: var(--accent);
        box-shadow: 0 0 10px rgba(255, 215, 0, 0.3);
    }

    .save-btn {
        background: linear-gradient(45deg, var(--primary), var(--secondary));
        color: white;
        padding: 12px 25px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 1px;
        transition: all 0.3s ease;
        margin-top: 20px;
    }

    .save-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(203, 33, 17, 0.3);
    }

    .recent-orders {
        background: rgba(255, 255, 255, 0.05);
        border-radius: 10px;
        padding: 20px;
    }

    .order-item {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 15px;
        border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        transition: all 0.3s ease;
    }

    .order-item:last-child {
        border-bottom: none;
    }

    .order-item:hover {
        background: rgba(255, 255, 255, 0.08);
    }

    .order-info {
        color: white;
    }

    .order-number {
        font-size: 1.1rem;
        margin-bottom: 5px;
    }

    .order-date {
        color: rgba(255, 255, 255, 0.6);
        font-size: 0.9rem;
    }

    .order-status {
        padding: 5px 15px;
        border-radius: 20px;
        font-size: 0.9rem;
        font-weight: 500;
    }

    .status-completed {
        background: rgba(46, 213, 115, 0.2);
        color: #2ed573;
    }

    .status-pending {
        background: rgba(255, 171, 0, 0.2);
        color: #ffab00;
    }

    @media (max-width: 768px) {
        body {
            flex-direction: column;
        }

        nav {
            width: 100%;
            height: auto;
            position: relative;
            padding: 15px 0;
        }

        main {
            margin-left: 0;
            padding: 20px;
            width: 100%;
        }

        .logo-container {
            padding: 0 15px 15px;
            margin-bottom: 15px;
        }

        .logo-container img {
            height: 50px;
        }

        .logo-text {
            font-size: 18px;
        }

        .profile-header {
            flex-direction: column;
            text-align: center;
            gap: 20px;
        }

        .profile-stats {
            justify-content: center;
        }

        .profile-content {
            grid-template-columns: 1fr;
        }
    }

    @media (max-width: 480px) {
        .logo-container img {
            height: 40px;
        }

        .logo-text {
            font-size: 16px;
        }

        .profile-avatar {
            width: 120px;
            height: 120px;
        }

        .profile-name {
            font-size: 1.5rem;
        }

        .profile-email {
            font-size: 1rem;
        }

        .stat-value {
            font-size: 1.2rem;
        }

        .stat-label {
            font-size: 0.8rem;
        }
    }
    </style>
</head>
<body>
    <nav>
        <div class="logo-container">
            <a href="#">
                <img src="CultureDrop-removebg-preview.png" alt="Culture Drop Logo">
            </a>
            <span class="logo-text">Culture Drop</span>
        </div>
        
        <div class="nav-section">
            <div class="nav-title">Menu</div>
            <ul>
                <li><a href="pop.html"><span>Home</span></a></li>
                <li><a href="tshirts.html"><span>T-Shirts</span></a></li>
                <li><a href="hoodies.html"><span>Hoodies</span></a></li>
                <li><a href="jeans.html"><span>Jeans</span></a></li>
                <li><a href="shoes.html"><span>Shoes</span></a></li>
                <li><a href="accessories.html"><span>Accessories</span></a></li>
            </ul>
        </div>
        
        <div class="nav-section">
            <div class="nav-title">Account</div>
            <ul>
                <li><a href="profile.html" class="active"><span>My Account</span></a></li>
                <li><a href="cart.html"><span>Cart</span></a></li>
                <li><a href="wishlist.html"><span>Wishlist</span></a></li>
            </ul>
        </div>
    </nav>

    <main>
        <section class="profile-section">
            <div class="profile-header">
                <div class="profile-avatar">
                    <img src="https://via.placeholder.com/150" alt="Profile Avatar">
                </div>
                <div class="profile-info">
                    <h1 class="profile-name">John Doe</h1>
                    <div class="profile-email">john.doe@example.com</div>
                    <div class="profile-stats">
                        <div class="stat-item">
                            <div class="stat-value">12</div>
                            <div class="stat-label">Orders</div>
                        </div>
                        <div class="stat-item">
                            <div class="stat-value">5</div>
                            <div class="stat-label">Wishlist</div>
                        </div>
                        <div class="stat-item">
                            <div class="stat-value">3</div>
                            <div class="stat-label">Reviews</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="profile-content">
                <div class="profile-details">
                    <h2 class="profile-section-title">Personal Information</h2>
                    <form>
                        <div class="form-group">
                            <label for="name">Full Name</label>
                            <input type="text" id="name" value="John Doe">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" value="john.doe@example.com">
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input type="tel" id="phone" value="+1 234 567 890">
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <input type="text" id="address" value="123 Street Name, City, Country">
                        </div>
                        <button type="submit" class="save-btn">Save Changes</button>
                    </form>
                </div>

                <div class="recent-orders">
                    <h2 class="profile-section-title">Recent Orders</h2>
                    <div class="order-item">
                        <div class="order-info">
                            <div class="order-number">Order #12345</div>
                            <div class="order-date">March 15, 2024</div>
                        </div>
                        <div class="order-status status-completed">Completed</div>
                    </div>
                    <div class="order-item">
                        <div class="order-info">
                            <div class="order-number">Order #12344</div>
                            <div class="order-date">March 10, 2024</div>
                        </div>
                        <div class="order-status status-pending">Pending</div>
                    </div>
                    <div class="order-item">
                        <div class="order-info">
                            <div class="order-number">Order #12343</div>
                            <div class="order-date">March 5, 2024</div>
                        </div>
                        <div class="order-status status-completed">Completed</div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <script>
        // Form submission handling
        document.querySelector('form').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Profile updated successfully!');
        });
    </script>
</body>
</html> 
