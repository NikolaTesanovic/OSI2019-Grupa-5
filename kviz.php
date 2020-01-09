<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Document</title>
    <link href="css/kviz.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    
    <?php
    require("database.php");
//podaci potrebni da se poveze na bazu podataka
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "database_dogadjaji";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset('utf8');

//    provjera da li je uradjen submit
    if (isset($_POST['submit'])) {
        $varijabla = $_POST['submit'];
        $tacan     = $_SESSION['tacanodg'];
        $rezultat  = $_POST['rezultat'];
        $num_array = $_SESSION['array'];
        if ($varijabla == $tacan) {
            $brojac = $rezultat + 1;
        } else {

            $brojac = $rezultat;
        }
    } else {
        //ako se prvi ulazi na kviz znaci da prije nije uradjen submit, pa se deklarisu pocetne vrijednosti varijabli
        $brojac    = 0;
        $num_array = array();
    }
    if (count($num_array) == 10) {
        echo "<div class='kraj_kviza' >";
            echo "<h1>Čestitamo</h1>";
            echo "<div class='broj_bodova' >";
                echo "<label>Broj bodova koji ste osvojili: </label>";
                echo "<input value=".$brojac.">";
                
                if(check_login()){
                    echo "<a class='btn btn-lg btn-outline-primary btn-block' href='admin_menu.php' role='button'>Pocetna</a>";
                }else{
                    echo "<a class='btn btn-lg btn-outline-primary btn-block' href='guest_menu.php' role='button'>Pocetna</a>";
                }
            echo "</div>";
        echo "</div>";
    } else {
        do {
            //do while da se neko pitanje ne ponovi 2 puta
            $random_number = rand(18, 27);
        } while (in_array($random_number, $num_array));
        array_push($num_array, $random_number);
        //dodavanje array u sesion da se moze pristupiti nakon POST
        $_SESSION['array'] = $num_array;
        //sql komanda da se pokupi novi red iz baze, gdje je id jednak random broju koji je generisan
        $sql= "SELECT * FROM kviz2 WHERE id =" . $random_number;
        //izvrsavanje query-a, iznad je samo deklarisan format sql ovde se izvrsava
        $result= $conn->query($sql);
        //uzima se jedan red iz result
        if ($row = $result->fetch_assoc()) {
            echo "<div class='kviz_form' >";
                $pitanje = $row['pitanje'];
                echo "<div id = 'pitanje_div' ><h1>".$pitanje."</h1></div>";
                echo "<br>";
                echo "<form method='POST' action=''>";
                $odg1 = $row['odgovor_1'];
                $odg2 = $row['odgovor_2'];
                $odg3 = $row['odgovor_3'];
                $tacan_odg = $row['tacan_odgovor'];
                $_SESSION['tacanodg'] = $tacan_odg;
                echo "<div class='odgovori' >";
                    echo "<button type = 'submit' name='submit' value = '$odg1'>";
                    echo $odg1;
                    echo "</button>";
                    
                    echo "<button type = 'submit' name='submit' value = '$odg2'>";
                    echo $odg2;
                    echo "</button>";
                    
                    echo "<button type = 'submit' name='submit' value ='$odg3'>";
                    echo $odg3;
                    echo "</button>";
                    echo "<div class='rezultat'>";
                        echo "<label>Broj bodova: </label>";
                        echo "<input type='text' name='rezultat' value ='$brojac'>";
                    echo "</div>";
                    echo "<br>";
                echo "</div>";
                echo "<form>";
            echo "</div>";
        }
    }

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    //echo "Connected successfully";
?>
   
</body>
</html>