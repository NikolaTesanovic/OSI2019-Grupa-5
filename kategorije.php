<?php 
require("database.php");
if(check_login()){
    include("admin_header.php");
}else{
    include("guest_header.php");
}
?>

<?php

if (($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST['_METHOD'] == 'DELETE')) 
{
    $id = (int) $_POST['id'];

    $query = "DELETE FROM kategorije WHERE kategorija_id = $id";
    $result = mysqli_query($DB, $query);


    if ($result) 
    {
      echo '<script>alert("Obrisano!!!")</script>';
    }

    header("Location: #");
} 

?>

<main role="main">

  <section class="jumbotron text-center">
    <div class="container">
      <h1 class="jumbotron-heading">Kategorije</h1>
    </div>
  </section>

  <div class="album py-5 bg-light">
    <div class="container">
      <div class="row">
      <?php
        $query = "SELECT * FROM kategorije";
        $result = mysqli_query($DB, $query);

        if(mysqli_num_rows($result) > 0){
            while($row = mysqli_fetch_array($result)){

      ?>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <div class="card-body">
              <p class="card-text">
                <h3 class="text-center">              
                  <?php 
                    echo $row["kategorija_naziv"];
                  ?>
                </h3>
              </p>
              
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
 

                    <?php
                      //require("database.php");
                      if(check_login()){
                        ?>
                          <form  method='POST' onsubmit='return confirm('Da li si siguran da zelis da obrises?');'>
                          <input type='hidden' name='id' value='<?php echo $row['kategorija_id']; ?>'>    
                          <button type='submit' class='btn btn-sm btn-outline-danger' name ='_METHOD' value='DELETE' >Obrisi kategoriju</button>    
                        </form> 
                        <?php
                      }else{
                      }
                    ?>

                  &nbsp;

                  <form  method="POST" action="dogadjaji_kategorije.php" >
                      <input type="hidden" name="id" value="<?php echo $row["kategorija_id"]; ?>">
                      <button type="submit" class="btn btn-sm btn-outline-secondary " name ="_METHOD" value="DOGADJAJI">Pogledaj dogadjaje</button>
                  </form>
                </div>
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
  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2019 Eventinijum</p>
  </footer>
</body>
</html>
