<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bootstrap Success Popup with Loader</title>
  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom CSS -->
  <style>
    .modal-success .modal-content {
      background-color: red; / Green background color /
      color: #fff; / White text color /
    }

    .modal-success .loader {
      border: 6px solid #fff; / White border for loader /
      border-top: 6px solid #007bff; / Blue border for loader /
      border-radius: 50%;
      width: 30px;
      height: 30px;
      animation: spin 1s linear infinite; / Apply rotation animation /
      margin: 0 auto; / Center the loader /
    }

    @keyframes spin {
      0% { transform: rotate(0deg); }
      100% { transform: rotate(360deg); }
    }
  </style>
</head>
<body>

<div class="modal fade modal-success" id="successModal" tabindex="-1" role="dialog" aria-labelledby="successModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title"   id="successModalLabel" style="color: white;">Error!</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="text-center">
          <div class="loader"></div> <!-- Loader -->
          <p style="color: white">${errorMsg}</p>
        </div>
      </div>
    </div>	
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
  // Show the modal
  $('#successModal').modal('show');

  // Close the modal and go back to the previous page after 5 seconds
  setTimeout(function(){
    $('#successModal').modal('hide');
    window.history.back(); // Go back to previous page
  }, 7000); // 5000 milliseconds = 5 seconds
</script>

</body>
</html>