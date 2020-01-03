<?php
include("admin.php");
include("admin_header.php");
//require("config.php");
?>

<?php



if (($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST['_METHOD'] == 'DELETE')) 
{
    $id = (int) $_POST['id'];


    $connect =  mysqli_connect($DATABASE['host'], $DATABASE['username'], $DATABASE['password'], $DATABASE['database'] );

    $query = "DELETE FROM dogadjaji WHERE dogadja_id = $id";
    $result = mysqli_query($connect, $query);


    if ($result) 
    {
      echo '<script>alert("Obrisano!!!")</script>';
    }

    header("Location: #");

    //unset($result);
} 
else if(($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST['_METHOD'] == 'UPDATE'))
{
    $id = (int) $_POST['id'];

}

?>


<main role="main">

  <section class="jumbotron text-center">
    <div class="container">
      <h1 class="jumbotron-heading">EVENTINIJUM</h1>
      <p class="lead text-muted">Projekat za SVE bodove... </p>
      <p>
        <a href="#" class="btn btn-primary my-2">IVANOVIC</a>
        <a href="#" class="btn btn-secondary my-2">IVANOVIC_BUTTON</a>
      </p>
    </div>
  </section>

 

  <div class="album py-5 bg-light">
    <div class="container">
      <div class="row">
      <?php
        $connect =  mysqli_connect($DATABASE['host'], $DATABASE['username'], $DATABASE['password'], $DATABASE['database'] );

        $query = "SELECT * FROM dogadjaji";
        $result = mysqli_query($connect, $query);

        if(mysqli_num_rows($result) > 0){
            while($row = mysqli_fetch_array($result)){

            
        
      ?>

      
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail">
            <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#55595c"/>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">DOGADJAJ</text>
            </svg>
            <div class="card-body">
              <p class="card-text">                 
                <?php 
                      
                echo "<strong>".$row["naziv"]."</strong>";  
                echo "<br>";                            
                echo $row["detalji"];
                //OVO JE POKUSAJ DA SVE KARTICE BUDU ISTE VELICINE TJ. ISTI BROJ SLOVA HAHH
                /*if(strlen($row["detalji"])==250){
                    echo $row["detalji"]; 
                }
                else if (strlen($row["detalji"])>=247) {
                    echo $row["detalji"];
                    echo "...";
                }
                else{
                  echo $row["detalji"];
                  for ($i = strlen($row["detalji"]); $i <= 247; $i++) {
                      echo "a";
                  }
                  echo "...";
                }
                */

                                                    
                  ?></p>
              
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">


                  

                  <form  method="POST" onsubmit="return confirm('Da li si siguran da zelis da obrises???');">


                          
                          <input type="hidden" name="id" value="<?php echo $row["dogadja_id"]; ?>">
                          
                          <button type="submit" class="btn btn-sm btn-outline-secondary" name ="_METHOD" value="DELETE" >Obrisi dogadjaj</button>
                          
                  </form>   

                  <form  method="POST" action="update_form.php" >
                      
                      <input type="hidden" name="id" value="<?php echo $row["dogadja_id"]; ?>">
                      <button type="submit" class="btn btn-sm btn-outline-secondary " name ="_METHOD" value="UPDATE">Azuriraj dogadjaj</button>
                      
                  </form>
                  
                </div>
                <small class="text-muted"><?php echo substr($row["datum"], 0,10); ?></small>
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

</html>
