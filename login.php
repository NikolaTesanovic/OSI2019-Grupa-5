<?php
   session_start();
   session_destroy();
?>

<?php 
include("database.php");
switch (login()) {
  case 2:
    # login successful
    if(isset($_GET['redirect'])){
      goto_page($_GET['redirect']);
    }else{
      goto_page("admin_menu.php");
    }
    break;
  case 1:
    # login not succesful
    $failedlogin = true;
    break;
  case 0:
    # no login info sent - do nothing
    break;
}
?>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="ikona.ico">

    <title>Prijava</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form class="form-signin" action="#" method="POST">
      <img class="mb-4" src="ikona.ico" alt="" width="120" height="120">
      <h1 class="h3 mb-3 font-weight-normal">Molimo prijavite se</h1>
        <?php if(isset($failedlogin) && $failedlogin==true) 
              echo '<div class="alert alert-danger" role="alert">Pogresan username ili password!</div>'; 
        ?>
      <label for="username" class="sr-only">Username</label>
      <input type="username" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Prijavite se</button>
      <a class="btn btn-lg btn-primary btn-block" href="guest_menu.php" role="button">Nastavite bez prijave</a>

      <p class="mt-5 mb-3 text-muted">&copy; 2019 Eventinijum</p>
    </form>
  </body>
</html>
