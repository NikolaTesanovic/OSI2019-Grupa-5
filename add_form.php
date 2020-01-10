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

                $query = "INSERT INTO dogadjaji (naziv, detalji, datum, grad_id, kategorija_id, korisnik_id) 
                VALUES ('".$_POST['imeDogadjaja']."','".$_POST['opisDogadjaja']."','".$_POST['datum']."',".$_POST['grad_select'].",".$_POST['kategorija_select'].",".$_SESSION['userid'].")";
                $result = mysqli_query($DB, $query);

                if ($result === TRUE) {
                    echo '<script>alert("Uspjesno dodat novi dogadjaj!!!")</script>';
                } else {
                    echo '<script>alert("Greska pri dodavanju novog dogadjaja!!!")</script>';
                }

          } else {
          }
      }
      ?>

    <!--
    <script>
        function hideA(x) {
            if (x.checked) {
                document.getElementById("A").style.display = "none";
                document.getElementById("B").style.display = "inline";
            }
        }

        function hideB(x) {
            if (x.checked) {
                document.getElementById("B").style.display = "none";
                document.getElementById("A").style.display = "inline";
            }
        }
    </script>
  -->
    
  <div class="container">
  <div class="py-5 text-center">
    
    <img class="d-block mx-auto mb-4" src="ikona.ico" alt="" width="72" height="72">
    <h2>Add form</h2>
    <p class="lead">Forma za dodavanje novog dogadjaja</p>
  </div>

    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">Forma za dodavanje</h4>
  
        <form class="needs-validation" method="POST" action="" validate>  
        <div class="row"></div>    
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">Ime dogadjaja</label>
            <input type="text" class="form-control" name="imeDogadjaja" id="imeDogadjaja" placeholder="Unesite ime dogadjaja..." value="" required>
            <div class="invalid-feedback">
                Potrebno je unijeti ime dogadjaja
            </div>
          </div>
        </div>

        <div class="form-group">
            <label for="exampleFormControlTextarea1">Opis dogadjaja</label>
            <textarea class="form-control" id="opisDogadjaja" name="opisDogadjaja" rows="3"></textarea>
        </div>


        <div>
            <input type="date" id="datum" name="datum" value="" required>
        </div>

        <div class="row" id="bbb" style="display:inline">
          <div class="col-md-5 mb-3">
            <label for="grad">Izaberite kategoriju</label>
            <select class="custom-select d-block w-100" id="grad_select" name="grad_select" required>

            <option value="">Izaberite grad...</option>
              <?php
                $query = "SELECT * FROM gradovi";
                $result = mysqli_query($DB, $query);

                if(mysqli_num_rows($result) > 0){
                    while($row = mysqli_fetch_array($result)){
              ?>
              <option value="<?php echo $row["grad_id"];?>"><?php echo $row["grad_naziv"];?></option>
              <?php
                }
                }
              ?>
            </select>
            <div class="invalid-feedback">
              Morate izabrati kategoriju
            </div>
          </div>
        </div>


<!--
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" onchange="hideB(this)" checked>
            <label class="form-check-label" for="inlineRadio1">Izaberite postojecu kategoriju</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2" onchange="hideA(this)">
            <label class="form-check-label" for="inlineRadio2">Dodajte novu kategoriju</label>
        </div>
        <div class="row"></div>
-->
        <div class="row" id="A" style="display:inline">
          <div class="col-md-5 mb-3">
            <label for="kategorija">Izaberite kategoriju</label>
            <select class="custom-select d-block w-100" id="kategorija_select" name="kategorija_select" required>

              <option value="">Izaberite kategoriju...</option>

              <?php
                $query = "SELECT * FROM kategorije";
                $result = mysqli_query($DB, $query);

                if(mysqli_num_rows($result) > 0){
                    while($row = mysqli_fetch_array($result)){

              ?>
              <option value="<?php echo $row["kategorija_id"];?>"><?php echo $row["kategorija_naziv"];?></option>
              <?php
                }
                }
              ?>
            </select>

            <div class="invalid-feedback">
              Morate izabrati kategoriju
            </div>
          </div>
        </div>

<!--
        <div class="row" id="B" style="display:none">
          <div class="col-md-6 mb-3">
            <label for="firstName">Ime kategorije</label>
            <input type="text" class="form-control" id="imeKategorije" placeholder="Unesite ime kategorije..." value="" required>
            <div class="invalid-feedback">
                Potrebno je unijeti ime kategorije
            </div>
          </div>
        </div>
-->
      <hr class="mb-4">
        <button class="btn btn-primary btn-lg" name="btnSubmit" id="btnSubmit" type="submit">Dodajte dogadjaj</button> 
      </form>
    </div>
  </div>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2019 Eventinijum</p>
  </footer>
</div>
</body>
</html>

