<!DOCTYPE html>
<html lang="ro">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autentificare </title>
    <style>
        :root {
            --primary: #6a11cb;
            --secondary: #2575fc;
            --dark: #1a1a2e;
            --light: #f8f9fa;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(45deg, var(--dark), #696969);
            font-family: 'Montserrat', sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .login-wrapper {
            display: flex;
            width: 1000px;
            height: 600px;
            border-radius: 30px;
            overflow: hidden;
            box-shadow: 0 25px 45px rgba(0, 0, 0, 0.3);
            position: relative;
            z-index: 2;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
        }

        .preview-section {
            flex: 1;
            position: relative;
            background: url('giphy.gif') center/cover;
            animation: gifGlow 4s ease-in-out infinite;
        }

        .preview-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, rgba(26,26,46,0.9) 0%, rgba(106,17,203,0.2) 100%);
        }

        .login-container {
            width: 400px;
            padding: 50px;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(15px);
            border-left: 1px solid rgba(255, 255, 255, 0.1);
        }

        .login-header {
            text-align: center;
            margin-bottom: 40px;
            position: relative;
        }

        .login-header h1 {
            font-size: 32px;
            color: white;
            text-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .login-header p {
            color: rgb(255, 255, 255);
            font-size: 14px;
        }

        .form-group {
            position: relative;
            margin-bottom: 30px;
        }

        .form-group input {
            width: 100%;
            padding: 15px 20px;
            background: rgba(255, 255, 255, 0.1);
            border: none;
            border-radius: 35px;
            font-size: 14px;
            color: white;
            transition: all 0.3s;
        }

        .form-group input:focus {
            background: rgba(255, 255, 255, 0.15);
            box-shadow: 0 0 10px rgba(106, 17, 203, 0.5);
        }

        .form-group label {
            position: absolute;
            left: 20px;
            top: 50%;
            transform: translateY(-50%);
            color: rgba(255, 255, 255, 0.7);
            pointer-events: none;
            transition: all 0.3s;
        }

        .form-group input:focus + label,
        .form-group input:valid + label {
            top: -5px;
            font-size: 12px;
        }

        .submit-btn {
            width: 100%;
            padding: 15px;
            background: linear-gradient(45deg, var(--primary), var(--secondary));
            color: white;
            border: none;
            border-radius: 35px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .submit-btn:hover {
            opacity: 0.9;
        }

        .divider {
            margin: 30px 0;
            color: rgb(255, 255, 255);
            text-align: center;
            position: relative;
            text-shadow: 0 0 15px rgba(155, 42, 163, 0.3);
            shadow
        }   

        .social-login {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .social-btn {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-decoration: none;
            transition: all 0.3s;
        }

        .google { background: #DB4437; }
        .facebook { background: #4267B2; }
        .twitter { background: #1DA1F2; }

        .signup-link {
            text-align: center;
            margin-top: 20px;
            color: rgb(255, 255, 255);
        }

        .signup-link a {
            color: rgba(255, 255, 255, 0.433);
            text-decoration: none;
        }
        .signup-link a:hover{
            color:linear-gradient(45deg, var(--primary), var(--secondary));
        }

        @keyframes gifGlow {
            0%, 100% { opacity: 0.9; }
            50% { opacity: 1; }
        }

        @media (max-width: 1040px) {
            .login-wrapper {
                width: 90%;
                height: auto;
                flex-direction: column;
            }

            .preview-section {
                height: 250px;
            }

            .login-container {
                width: 100%;
                padding: 40px 30px;
            }
        }

        @media (max-width: 480px) {
            .login-wrapper {
                width: 95%;
            }

            .preview-section {
                height: 200px;
            }
        }

        .particles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
        }

        .particle {
            position: absolute;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            animation: float 15s infinite linear;
        }

        @keyframes float {
            0% { transform: translateY(0) rotate(0deg); }
            100% { transform: translateY(-1000px) rotate(720deg); }
        }

        .back-btn {
     align-items: center;
    width: 500px;
    padding: 15px;
    background: linear-gradient(45deg, #ff416c, #ff4b2b);
    color: white;
    border: none;
    border-radius: 35px;
    cursor: pointer;
    transition: all 0.3s;
    margin-top: 20px;
}

.back-btn:hover {
    opacity: 0.9;
}
@keyframes fadeInUp {
    0% { opacity: 0; transform: translateY(20px); }
    100% { opacity: 1; transform: translateY(0); }
}

@keyframes slideInRight {
    0% { transform: translateX(100%); opacity: 0; }
    100% { transform: translateX(0); opacity: 1; }
}

@keyframes bounceIn {
    0% { transform: scale(0.8); opacity: 0; }
    60% { transform: scale(1.1); opacity: 1; }
    100% { transform: scale(1); }
}

/* Aplicații pe elemente */
.login-container {
    animation: slideInRight 1s ease forwards;
}

.login-header h1 {
    animation: bounceIn 1s ease-out;
}

.form-group,
.submit-btn,
.divider,
.social-login,
.signup-link {
    animation: fadeInUp 1s ease forwards;
    opacity: 0;
}

.form-group:nth-of-type(1) { animation-delay: 0.6s; }
.form-group:nth-of-type(2) { animation-delay: 0.7s; }
.submit-btn { animation-delay: 0.8s; }
.divider { animation-delay: 0.9s; }
.social-login { animation-delay: 1s; }
.signup-link { animation-delay: 1.1s; }

/* Hover efect */
.submit-btn {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}   

.submit-btn:hover {
    transform: scale(1.05);
    box-shadow: 0 0 15px rgba(106, 17, 203, 0.5);
}
.form-remember {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-bottom: 20px;
    color: rgba(255, 255, 255, 0.7);
    font-size: 14px;
    padding: 15px;  
}

.form-remember input[type="checkbox"] {
    accent-color: var(--primary);
    width: 18px;
    height: 18px;
    cursor: pointer;
}


    </style>
</head>
<body>
    <div class="particles" id="particles"></div> 
    <div class="login-wrapper">
        <div class="login-container">
            <div class="login-header">
                <h1>Bine ai revenit</h1>
                <p>Luxul nu este o etichetă de preț, este o aură - iar muzica trap este coloana sonoră.</p>
            </div>

            <form>
                <div class="form-group">
                    <input type="email" id="email" required>
                    <label for="email">Adresă email</label>
                </div>

                <div class="form-group">
                    <input type="password" id="password" required>
                    <label for="password">Parolă</label>
                </div>

                <button type="submit" class="submit-btn">AUTENTIFICARE</button>
                <div class="form-remember">
                    <input type="checkbox" id="remember" /></br>
                <label for="remember">Ține-mă minte</label>
                </div>

                <div class="divider">SAU CONECTEAZĂ-TE CU</div>

                <div class="social-login">
                    <a href="https://shorturl.at/00Nja" class="social-btn google">G</a>
                    <a href="https://www.facebook.com/" class="social-btn facebook">f</a>
                    <a href="https://x.com/?lang=en" class="social-btn twitter">X</a>
                </div>

                <div class="signup-link">
                    Nu ai cont? <a href="#">Înregistrează-te</a>
                </div>
            </form>
        </div>

        <div class="preview-section">
            <div class="preview-overlay"></div>
        </div>
    </div>

    <script>
        // Particule animate
        const particlesContainer = document.getElementById('particles');
        for (let i = 0; i < 30; i++) {
            const particle = document.createElement('div');
            particle.classList.add('particle');
            
            const size = Math.random() * 10 + 5;
            particle.style.width = `${size}px`;
            particle.style.height = `${size}px`;
            particle.style.left = `${Math.random() * 100}%`;
            particle.style.top = `${Math.random() * 100}%`;
            particle.style.animationDelay = `${Math.random() * 15}s`;
            particle.style.animationDuration = `${Math.random() * 20 + 10}s`;
            
            particlesContainer.appendChild(particle);
        }
    </script>
</body>
</html> 
