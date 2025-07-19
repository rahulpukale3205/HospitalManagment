<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Hospital Management System</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      height: 100vh;
      background-image: url('assets/img/gallery/index.jpg'); /* ✅ Correct path here */
      background-size: cover;
      background-repeat: no-repeat;
      background-position: center;
    }

    header {
      background-color: #333;
      color: #fff;
      text-align: center;
      padding: 20px 0;
    }

    .centered-button {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 75vh;
    }

    .centered-button a {
      padding: 6px 15px;
      font-size: 1em;
      background-color: #007bff;
      color: #fff;
      border: none;
      cursor: pointer;
      text-decoration: none;
      text-transform: uppercase;
      border-radius: 5px;
      transition: 0.3s ease;
      position: relative;
      overflow: hidden;
    }

    .centered-button a:hover {
      background-color: #0056b3;
    }

    .centered-button a span {
      position: relative;
      z-index: 1;
    }

    .centered-button a .liquid {
      position: absolute;
      top: -60px;
      left: 0;
      width: 100%;
      height: 200px;
      background: #7293ff;
      box-shadow: inset 0 0 50px rgba(0, 0, 0, 0.7);
      z-index: 0;
      transition: 0.6s;
    }

    .centered-button a .liquid::before,
    .centered-button a .liquid::after {
      content: "";
      position: absolute;
      width: 200%;
      height: 200%;
      top: 0;
      left: 0;
      transform: translate(-25%, -75%);
    }

    .centered-button a .liquid::after {
      border-radius: 45%;
      background: rgba(20, 20, 20, 1);
      box-shadow: 0 0 10px 5px #7293ff, inset 0 0 5px #7293ff;
      animation: animate 5s linear infinite;
      opacity: 0.8;
    }

    .centered-button a .liquid::before {
      border-radius: 40%;
      box-shadow: 0 0 10px rgba(26, 26, 26, 0.5), inset 0 0 5px rgba(26, 26, 26, 0.5);
      background: rgba(26, 26, 26, 0.5);
      animation: animate 7s linear infinite;
    }

    @keyframes animate {
      0% {
        transform: translate(-25%, -75%) rotate(0);
      }
      100% {
        transform: translate(-25%, -75%) rotate(360deg);
      }
    }

    .centered-button a:hover .liquid {
      top: -120px;
    }

    .centered-button a:hover {
      box-shadow: 0 0 5px #7293ff, inset 0 0 5px #7293ff;
    }
  </style>
</head>
<body>
  <header>
    <h1>Hospital Management System</h1>
  </header>
  <div class="centered-button">
    <a href="hrlog" target="_blank" aria-label="Login">
      <span>Login</span>
      <div class="liquid"></div>
    </a>
  </div>
</body>
</html>
