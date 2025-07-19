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
  </style>
</head>
<body style="background-image: url('resource/images/slide2.jpg'); background-size: 100%, 90%; height: 100vh;">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="btn btn-outline-primary btn-custom mx-2" href="homeDoctor">Home Page</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">		
        <li class="nav-item">
          <a class="btn btn-outline-primary btn-custom mx-2" href="add">Add Doctor</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-outline-primary btn-custom mx-2" href="select">Search ID</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-outline-primary btn-custom mx-2" href="select-all">Select All</a>
        </li>
      </ul>
    </div>
  </nav>
  
  <div class="mdb-page-content text-center page-intro bg-light">
          
  <table class="table table-dark table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Contact</th>
        <th>Address</th>
        <th>Gender</th>
        <th>Age</th>
        <th>Allergy</th>
 
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${emp.id}</td>
        <td>${emp.name}</td>
        <td>${emp.contact}</td>
        <td>${emp.address}</td>
        <td>${emp.gender}</td>
        <td>${emp.age}</td>
        <td>${emp.allergy}</td>
 
      </tr>
    </tbody>
  </table>
</div>

  
  
  
  

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
