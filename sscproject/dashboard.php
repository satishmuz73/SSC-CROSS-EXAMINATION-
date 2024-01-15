<?php
require_once("connect.php");
session_start();

if (!isset($_SESSION['login_active'])) {
  header("Location: login.php");
  exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ssc Cross Examination</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="shortcut icon" href="img/logo1.png" type="image/x-icon">
  <link rel="stylesheet" href="css/style.css">
  <style type="">
            body{
                  width: 100%;
                  background: url(img/book.png) ;
                  background-position: center center;
                  background-repeat: no-repeat;
                  background-attachment: fixed;
                  background-size: cover;
                }
          </style>
</head>

<body>
  <section class="main-section">

    <nav class="navbar navbar-expand-lg bg-body-tertiary bg-dark" data-bs-theme="dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="dashboard.php">SSC CROSS EXAMINATION</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"></a>
            </li>
          </ul>

          <div class="d-flex">
            <a class="btn btn-danger" href="logout.php">Logout</a>
          </div>
        </div>
      </div>
    </nav>


    <div class="container">

      <?php if (isset($_SESSION['msg'])) : ?>
        <div class="toast-container position-fixed bottom-0 end-0 p-3">
          <div class="toast fade show" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header <?php echo $_SESSION['class']; ?>">
              <strong class="me-auto">Success</strong>
              <button type="button" class="btn-close text-white" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
              <?php
              $message = $_SESSION['msg'];
              unset($_SESSION['msg']);
              echo $message;
              ?>
            </div>
          </div>
        </div>
      <?php endif; ?>

      <div class="row justify-content-center">
        <h2 class="pt-4" style="color:white">Welcome <?php echo $_SESSION['login_active']['0']; ?></h2>

        <div class="col-md-6">
          <div class="card m-5 p-3">
            <div class="card-body">
              <h3 class="card-title py-2">Start SSC Exam</h3>
              <a href="quiz.php" class="btn btn-warning m-2">Start</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>