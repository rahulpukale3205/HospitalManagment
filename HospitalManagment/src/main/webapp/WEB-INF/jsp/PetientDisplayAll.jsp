<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Medical HTML-5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        .table-container {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0 1rem;
        }
        .table {
            width: 100%;
            max-width: 1200px;
            background-color: #fff;
            color: #000;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .table:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        th, td {
            padding: 1rem;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: #fff;
            font-size: 1.25rem;
        }
        td {
            font-size: 1rem;
        }
        .back-button {
            display: flex;
            justify-content: center;
            margin-top: 4rem;
        }
        .back-button button {
            padding: 0.5rem 1rem;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
        }
        .back-button button:hover {
            background-color: #0056b3;
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .btn-custom {
            font-size: 1.25rem;
            padding: 0.75rem 1.25rem;
            transition: background-color 0.3s, border-color 0.3s, color 0.3s, transform 0.3s, box-shadow 0.3s;
        }
        .btn-custom:hover {
            background-color: #007bff;
            border-color: #007bff;
            color: #fff;
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        body {
            background-color: #f8f9fa;
        }
        .table-custom thead th {
            background-color: #007bff;
            color: #ffffff;
        }
        .table-custom tbody tr:nth-child(odd) {
            background-color: #f2f2f2;
        }
        .table-custom tbody tr:hover {
            background-color: #e9ecef;
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .table-custom tbody tr td {
            text-align: center;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
        }
    </style>
</head>
<body>
    <header>
        <div class="header-area" style="background-image: url('assets/img/gallery/hero2.png'); background-size: 100%, 90%; height: 13vh;">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-xl-2 col-lg-2 col-md-1">
                            <div class="logo">
                                <a href="Phome"><img src="assets/img/logo/logo.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-xl-10 col-lg-10 col-md-10">
                            <div class="menu-main d-flex align-items-center justify-content-end">
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a href="Phome">Home</a></li>
                                            <li><a href="pabout">About</a></li>
                                            <li><a href="Hpetient">Petient</a></li>
                                            <li><a href="pdepartment">Department</a></li>
                                            <li><a href="pblog">Blog</a></li>
                                            <li><a href="pcontact">Contact</a></li>
                                        </ul>
                                    </nav>
                                </div>
                                <div class="header-right-btn f-right d-none d-lg-block ml-30">
                                    <a href="#" class="btn header-btn">01654.066.456</a>
                                </div>
                            </div>
                        </div>   
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
  
    <div class="container mt-3">
        <div class="table-container">
            <table class="table table-striped table-bordered table-custom">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Address</th>
                <th>Gender</th>
                <th>Age</th>
                <th>Allergy</th>
                 <th>Action</th>
                
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${emp}" var="e">
                <tr>
                    <td>${e.id}</td>
                    <td>${e.name}</td>
                    <td>${e.contact}</td>
                    <td>${e.address}</td>
                    <td>${e.gender}</td>
                    <td>${e.age}</td>
                    <td>${e.allergy}</td>
                    <td>
                        <a href="UpdatePETIENT?id=${e.id}&name=${e.name}&contact=${e.contact}&address=${e.address}&gender=${e.gender}&age=${e.age}&allergy=${e.allergy}" class="btn btn-sm btn-warning">Edit</a>
                        <a href="deletep?id=${e.id}" class="btn btn-sm btn-danger">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
        </div>
        <div class="back-button">
            <button onclick="goBack()">Back</button>
        </div>
    </div>

    <!-- JS here -->
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/animated.headline.js"></script>
    <script src="assets/js/jquery.magnific-popup.js"></script>
    <script src="assets/js/gijgo.min.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery.sticky.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/contact.js"></script>
    <script src="assets/js/jquery.form.js"></script>
    <script src="assets/js/jquery.validate.min.js"></script>
    <script src="assets/js/mail-script.js"></script>
    <script src="assets/js/jquery.ajaxchimp.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
</body>
</html>
