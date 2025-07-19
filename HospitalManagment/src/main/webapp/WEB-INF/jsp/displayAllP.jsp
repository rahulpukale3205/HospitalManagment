<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hospital Management System</title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .btn-custom {
      font-size: 1.25rem; /* Increase the font size */
      padding: 0.75rem 1.25rem; /* Increase the padding */
    }

    .btn-custom:hover {
      background-color: #007bff;
      border-color: #007bff;
      color: #fff;
    }

    body {
        background-color: #f8f9fa; /* Light gray background */
    }
    .table-custom thead th {
        background-color: #007bff; /* Blue header background */
        color: #ffffff; /* White text color */
    }
    .table-custom tbody tr:nth-child(odd) {
        background-color: #f2f2f2; /* Light gray alternate row color */
    }
    /* Center the table data */
    .table-custom tbody tr td {
        text-align: center;
    }
</style>
  
  
  
</head>
<body style="background-image: url('resource/images/slide2.jpg'); background-size: 100%, 90%; height: 100vh;">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="btn btn-outline-primary btn-custom mx-2" href="home1">Home Page</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="btn btn-outline-primary btn-custom mx-2" href="addp">Add Doctor</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-outline-primary btn-custom mx-2" href="selectidp">Search ID</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-outline-primary btn-custom mx-2" href="selectallp">Select All</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container mt-3">
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
                        <a href="updatep?id=${e.id}&name=${e.name}&contact=${e.contact}&address=${e.address}&gender=${e.gender}&age=${e.age}&allergy=${e.allergy}" class="btn btn-sm btn-warning">Edit</a>
                        <a href="deletep?id=${e.id}" class="btn btn-sm btn-danger">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
