<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Sign Up Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f8f9fa;
        }
        .login-container {
            border: 2px solid black;
            max-width: 500px;
            width: 100%;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
            background-color: #fff;
        }
        .icon-color {
            color: #007bff;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            font-size: 1.5rem;
            padding: 1rem 1.5rem;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .input-group-text {
            background-color: #e9ecef;
        }
        .form-control {
            font-size: 1.25rem;
            padding: 1rem 2.rem;
        }
        .form-control:focus {
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
            border-color: #007bff;
        }
        .input-group-prepend {
            flex: 0 0 auto;
        }
        select.form-control {
            padding-right: 1.75rem;
        }
    </style>
</head>
<body style="background-image: url('assets/img/gallery/index.jpg');background-size: 100%,90%;height: 100vh">

    <div class="login-container bg-light">
        <h2 class="text-center" style="font-size: 40px;">Login</h2>
        <h3 style="color: red">${errorMsg}</h3>
        <form id="login-form" action="login" method="POST">
        <form id="login-form" action="dlogin" method="POST">
            <div class="form-group">
                <label for="username"><b>Username</b></label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user icon-color"></i></span>
                    </div>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter username" required>
                </div>
            </div>
            <div class="form-group">
                <label for="password"><b>Password</b></label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-lock icon-color"></i></span>
                    </div>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
                </div>
            </div>
            <div class="form-group">
                <label for="role"><b>Role</b></label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user-tag icon-color"></i></span>
                    </div>
                    <select class="form-control" id="role" name="role" required>
                        <option value="Doctor">Doctor</option>
                        <option value="hr">HR</option>
                    </select>
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>
    </div>

    <!-- Bootstrap and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
