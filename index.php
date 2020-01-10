<?php
   session_start();
   session_destroy();
?>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="ikona.ico">

    <title>Pocetna</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form class="form-signin" action="#" method="POST">
      <img class="mb-4" src="ikona.ico" alt="" width="120" height="120">
      <h1 class="h3 mb-3 font-weight-normal">Izaberite opciju</h1>
      
      <a class="btn btn-lg btn-primary btn-block" href="admin.php" role="button">Admin</a>
      <a class="btn btn-lg btn-primary btn-block" href="guest_menu.php" role="button">Guest</a>
      

      <p class="mt-5 mb-3 text-muted">&copy; 2019 Eventinijum</p>
    </form>
  </body>
</html>
