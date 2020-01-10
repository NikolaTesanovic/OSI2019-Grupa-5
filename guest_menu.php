<?php
include("database.php");
include("guest_header.php");
?>


<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') 
{
      if (isset($_POST['btnSviDogadjaji']))
      {
        $_SESSION['sort'] = "svi_dogadjaji";
        header("Location: #");
      }
      elseif (isset($_POST['btnDanasnjiDogadjaji'])) 
      {
          $_SESSION['sort'] = "danasnji_dogadjaj";
          header("Location: #");
      }
      elseif (isset($_POST['btnBuduciDogadjaji'])) {
        $_SESSION['sort'] = "buduci_dogadjaj";
          header("Location: #");
      }
      elseif (isset($_POST['btnProsliDogadjaji'])) {
        $_SESSION['sort'] = "prosli_dogadjaj";
          header("Location: #");
      }
      elseif (isset($_POST['btnSortirajPoDatumu'])) {
        $_SESSION['sort'] = "sortiraj_po_datumu";
          header("Location: #");
      }
}
?>

<?php


$DB->set_charset('utf8');


if(isset($_SESSION['sort']) && !empty($_SESSION['sort']))
{
    $datum = date("Y-m-d");

    if($_SESSION['sort'] == "svi_dogadjaji")
    {
      prikazi($DB, "SELECT * FROM dogadjaji");
    }
    elseif($_SESSION['sort'] == "danasnji_dogadjaj") {
        prikazi($DB, "SELECT * FROM dogadjaji WHERE datum = '".$datum."'");
    }
    else if($_SESSION['sort'] == "buduci_dogadjaj"){
        prikazi($DB, "SELECT * FROM dogadjaji WHERE datum >'".$datum."'");

    }
    else if($_SESSION['sort'] == "prosli_dogadjaj"){
        prikazi($DB, "SELECT * FROM dogadjaji WHERE datum < '".$datum."'");

    }
    else if($_SESSION['sort'] == "sortiraj_po_datumu"){
        prikazi($DB, "SELECT * FROM dogadjaji ORDER BY datum ASC");
    }
}
else
{
    prikazi($DB, "SELECT * FROM dogadjaji");
}
?>

<?php

function prikazi($DB, $query_string)
{
?>

<main role="main">

  <section class="jumbotron text-center">
    <div class="container">
      <h1 class="jumbotron-heading">EVENTINIJUM</h1>
      <!--<p class="lead text-muted"></p>-->
    </div>
  </section>

  <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle float-right" type="button" id="dropDown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Pregled
        </button>
            <div class="dropdown-menu" aria-labelledby="dropDown">

              <form  method="POST" action=""> 

              <button class="dropdown-item"  name="btnSviDogadjaji" id="btnSviDogadjaji" type="submit">Svi dogadjaji</button>
              <button class="dropdown-item"  name="btnDanasnjiDogadjaji" id="btnDanasnjiDogadjaji" type="submit">Danasnjih dogadjaji</button>
              <button class="dropdown-item" name="btnBuduciDogadjaji" id="btnBuduciDogadjaji" type="submit">Buduci dogadjaji</button>
              <button class="dropdown-item" name="btnProsliDogadjaji" id="btnProsliDogadjaji" type="submit">Prosli dogadjaji</button>
              <button class="dropdown-item" name="btnSortirajPoDatumuA" id="btnSortirajPoDatumuA" type="submit">Sortiraj po datumu ASC</button>
              <button class="dropdown-item" name="btnSortirajPoDatumuD" id="btnSortirajPoDatumuD" type="submit">Sortiraj po datumu DESC</button>
              </form>
            </div>
      </div>

 

  <div class="album py-5 bg-light">
    <div class="container">
      <div class="row">
      <?php
        $query = $query_string;
        $result = mysqli_query($DB, $query);

        if(mysqli_num_rows($result) > 0){
            while($row = mysqli_fetch_array($result)){

      ?>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <div class="card-body">
              <p class="card-text">                 
                <?php 
                      
                echo "<h3>".$row["naziv"]."</h3>";  
                echo "<br>";                            
                echo $row["detalji"];                                    
                ?>
              </p>
                
                <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">

                  <form  method="POST" action="komentari.php" >
                      
                      <input type="hidden" name="id" value="<?php echo $row["dogadja_id"]; ?>">
                      <button type="submit" class="btn btn-sm btn-outline-secondary " name ="_METHOD" value="UPDATE">Komentari</button>
                      
                  </form>
                  
                </div>
                </div>
              <div class="align-items-center">
                <p class="text-muted text-center"><?php echo substr($row["datum"], 0,10); ?></p>
              </div>
            </div>
          </div>
        </div>
  
      <?php
        }
        }
      ?>

      </div>
    </div>
  </div>
</main>

<?php
}
?>

<footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2019 Eventinijum</p>
</footer>
</body>
</html>
