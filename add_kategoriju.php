<?php 
include("admin.php");
include("admin_header.php");
?>

<!doctype html>
<html lang="en">
  <head>

    <?php 
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        if (isset($_POST['btnSubmit'])) {

            $check_query = "SELECT * FROM kategorije WHERE kategorija_naziv = '".$_POST['imeKategorije']."'";

            $check_result = mysqli_query($DB, $check_query);
            if(mysqli_num_rows($check_result) == 0)
            {

                $query = "INSERT INTO kategorije (kategorija_naziv) VALUES ('".$_POST['imeKategorije']."')";
                $result = mysqli_query($DB, $query);

                if ($result === TRUE) {
                    echo '<script>alert("Uspjesno dodata nova kategorija!!!")</script>';
                } else {
                    echo '<script>alert("Greska pri dodavanju kategorije!!!")</script>';
                }
            }else{
                echo '<script>alert("Kategorija sa tim imenom vec postoji!!!")</script>';
            }
        } else {}
    }
    ?>
  
  <div class="container">
  <div class="py-5 text-center">
    
    <img class="d-block mx-auto mb-4" src="ikona.ico" alt="" width="72" height="72">
    <h2>Add form</h2>
    <p class="lead">Forma za dodavanje nove kategorije</p>
  </div>

    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">Forma za dodavanje</h4>
  
        <form class="needs-validation" method="POST" action="" validate>  
        <div class="row"></div>    
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">Ime kategorije</label>
            <input type="text" class="form-control" name="imeKategorije" id="imeKategorije" placeholder="Unesite ime Kategorije..." value="" required>
            <div class="invalid-feedback">
                Potrebno je unijeti ime kategorije
            </div>
          </div>
        </div>
<!--
        <div class="form-group">
            <label for="exampleFormControlTextarea1">Opis kategorije</label>
            <textarea class="form-control" id="opisKategorije" name="opisKategorije" rows="3"></textarea>
        </div>
 -->
        <hr class="mb-4">
        <button class="btn btn-primary btn-lg" name="btnSubmit" id="btnSubmit" type="submit">Dodajte kategoriju</button> 
        </form>
    </div>
  </div>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2019 Eventinijum</p>
  </footer>
</div>
</body>
</html>

