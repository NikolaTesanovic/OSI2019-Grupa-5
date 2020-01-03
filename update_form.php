<?php 
include("admin.php");
include("admin_header.php");
?>



<!doctype html>
<html lang="en">
  <head>



    <?php

            if($_SERVER['REQUEST_METHOD'] == 'POST')
            {
                $update_id = (int) $_POST['id'];

               



                echo '<script type="text/javascript">alert(Id je "'.$update_id.'");</script>';

                echo("$update_id");


                $connect =  mysqli_connect($DATABASE['host'], $DATABASE['username'], $DATABASE['password'], $DATABASE['database'] );
                
                $query = "SELECT * FROM dogadjaji WHERE dogadja_id = ".$update_id;
                
                $result = mysqli_query($connect, $query);

                if(mysqli_num_rows($result) > 0)
                {
                    $row = mysqli_fetch_array($result);
                }

                


            }


            //ako neko rucno unese link
                if($update_id == "" || is_null($update_id))
                {
                    header("Location: admin_menu.php");
                }

              


              if (isset($_POST['btnSubmit'])) 
              {

               
                  $connect =  mysqli_connect($DATABASE['host'], $DATABASE['username'], $DATABASE['password'], $DATABASE['database'] );
                                
                  $query = "UPDATE dogadjaji SET naziv = '".$_POST['imeDogadjaja']."', detalji = '".$_POST['opisDogadjaja']."',datum = '".$_POST['datum']."',grad_id = ".$_POST['grad_select'].",kategorija_id = ".$_POST['kategorija_select'].", korisnik_id = ".$_SESSION['userid']."
                  WHERE dogadja_id =  $update_id";

                               

                                
                    $result = mysqli_query($connect, $query);

                    if ($result === TRUE) {
                      echo '<script>alert("Uspjesno azuriran dogadjaj!!!")</script>';
                    } 
                    else {
                                  
                        echo '<script>alert("Greska pri dodavanju novog dogadjaja!!!")</script>';
                    }

                    

                    header("Location: admin_menu.php");


              } 
              else 
              {
                            
                              // Assume btnSubmit
              }

      ?>

    


  </head>

  

  <body class="bg-light">
    
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
            <input type="text" class="form-control" name="imeDogadjaja" id="imeDogadjaja" placeholder="Unesite ime dogadjaja..." value="<?php echo $row["naziv"] ?>" required>
            <div class="invalid-feedback">
                Potrebno je unijeti ime dogadjaja
            </div>
          </div>
        </div>

      
        

        <div class="form-group">
            <label for="exampleFormControlTextarea1">Opis dogadjaja</label>
            <textarea class="form-control" id="opisDogadjaja" name="opisDogadjaja" rows="3"><?php echo $row["detalji"] ?></textarea>
        </div>


        <div>

            <!-- koristimo substr da bismo ispisali samo datum (da odvojim datum od vremena), jer je u bazi datetime-->
            <input type="date" id="datum" name="datum" value="<?php echo substr($row["datum"], 0,10);  ?>" required>
        </div>

       
      

<div class="row" id="bbb" style="display:inline">
          <div class="col-md-5 mb-3">
            <label for="grad">Izaberite grad</label>
            <select class="custom-select d-block w-100" id="grad_select" name="grad_select" required>

              <!--Prvo postavimo trenutni grad, a zatim dodamo ostale gradove ako ce mijenjati admin-->

              <?php
              //postavimo da je selektovan grad koji je trenutno u bazi
                $connect =  mysqli_connect($DATABASE['host'], $DATABASE['username'], $DATABASE['password'], $DATABASE['database'] );

                $update_id = (int) $_POST['id'];
                $query = "SELECT dogadjaji.grad_id, gradovi.grad_naziv FROM dogadjaji LEFT JOIN gradovi ON dogadjaji.grad_id = gradovi.grad_id WHERE dogadja_id = $update_id";

                $result = mysqli_query($connect, $query);

                if(mysqli_num_rows($result) > 0)
                {
                    $row_grad = mysqli_fetch_array($result)

               
                
              ?>
              <option value="<?php echo $row_grad["grad_id"];?>" selected="selected"><?php echo $row_grad["grad_naziv"];?></option>
              <?php
                     
                }
            ?>

              <?php
              //sada dodamo u drop meni ostale gradove iz baze podataka
                $connect =  mysqli_connect($DATABASE['host'], $DATABASE['username'], $DATABASE['password'], $DATABASE['database'] );

                $query = "SELECT * FROM gradovi";
                $result = mysqli_query($connect, $query);

                if(mysqli_num_rows($result) > 0)
                {
                    while($row = mysqli_fetch_array($result))
                    {

                      $update_id = (int) $_POST['id'];
                      
                      $query_grad = "SELECT grad_id FROM dogadjaji WHERE dogadja_id = $update_id";
                      $result_grad_id = mysqli_query($connect, $query_grad);

                      if(mysqli_num_rows($result_grad_id) > 0)
                          $row_grad = mysqli_fetch_array($result_grad_id);


                        if($row["grad_id"]!=$row_grad["grad_id"])
                        {
      
              ?>
              <option value="<?php echo $row["grad_id"];?>"><?php echo $row["grad_naziv"];?></option>
              <?php
                        }
                    }
                }
            ?>
            </select>

            <div class="invalid-feedback">
              Morate izabrati grad
            </div>
          </div>
        </div>





        

       
        <div class="row" id="A" style="display:inline">
          <div class="col-md-5 mb-3">
            <label for="kategorija">Izaberite kategoriju</label>
            <select class="custom-select d-block w-100" id="kategorija_select" name="kategorija_select" required>

              


              <?php
              //dodajemo prvo kategoriju koja je izabrana u bazi podataka
                $connect =  mysqli_connect($DATABASE['host'], $DATABASE['username'], $DATABASE['password'], $DATABASE['database'] );

                $update_id = (int) $_POST['id'];

                $query = "SELECT dogadjaji.kategorija_id, kategorije.kategorija_naziv FROM dogadjaji LEFT JOIN kategorije ON dogadjaji.kategorija_id=kategorije.kategorija_id WHERE dogadja_id = $update_id";

                $result = mysqli_query($connect, $query);

                if(mysqli_num_rows($result) > 0)
                {
                    $row_kategorija = mysqli_fetch_array($result);



              ?>
              <option value="<?php echo $row_kategorija["kategorija_id"];?>" selected="selected"><?php echo $row_kategorija["kategorija_naziv"];?></option>
              <?php
                     
                }
            ?>


            <?php
                $connect =  mysqli_connect($DATABASE['host'], $DATABASE['username'], $DATABASE['password'], $DATABASE['database'] );

                $query = "SELECT * FROM kategorije";
                $result = mysqli_query($connect, $query);

               

                if(mysqli_num_rows($result) > 0)
                {
                    while($row = mysqli_fetch_array($result))
                    {

                      $query_kategorija = "SELECT kategorija_id FROM dogadjaji WHERE dogadja_id = $update_id";
                      $result_kategorija_id = mysqli_query($connect, $query_kategorija);


                      if(mysqli_num_rows($result_kategorija_id) > 0)
                          $row_kategorija = mysqli_fetch_array($result_kategorija_id);

                      if($row["kategorija_id"]!=$row_kategorija["kategorija_id"])
                      {

              ?>
              <option value="<?php echo $row["kategorija_id"];?>"><?php echo $row["kategorija_naziv"];?></option>
              <?php
                      }
                    }
                }
            ?>
            </select>

            


            <div class="invalid-feedback">
              Morate izabrati kategoriju
            </div>
          </div>
        </div>






      <!--pamti id dogadjaja -->
      <input type="hidden" name="id" value="<?php echo $update_id; ?>">



      

      <hr class="mb-4">
        <button class="btn btn-primary btn-lg" name="btnSubmit" id="btnSubmit" type="submit">Azuriraj dogadjaj</button>


          
      </form>
    </div>
  </div>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2019 Eventinijum</p>
  </footer>
</div>
</body>
</html>

