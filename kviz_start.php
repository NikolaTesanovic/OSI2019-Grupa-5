<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="css/kviz.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class='start_div'>
        <h1 class='text-center'>Eventinijum Kviz</h1>
        <a class='btn btn-lg btn-outline-primary btn-block' href='kviz.php' role='button'>Pokreni kviz</a>
        <?php
            require("database.php");
        if(check_login()){
            echo "<a class='btn btn-lg btn-outline-primary btn-block' href='admin_menu.php' role='button'>Pocetna</a>";
        }else{
            echo "<a class='btn btn-lg btn-outline-primary btn-block' href='guest_menu.php' role='button'>Pocetna</a>";
        }
        ?>
       
    </div>
   
</body>
</html>