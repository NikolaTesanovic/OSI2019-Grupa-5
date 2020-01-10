<?php 
require("database.php");
if(check_login()){
    include("admin_header.php");
}else{
    include("guest_header.php");
}
?>

<?php

if($_SERVER['REQUEST_METHOD'] == 'POST')
{

    $post_id = (int) $_POST['id'];
?>

<main role="main"> 

  <div class="album py-5 bg-light">
    <div class="container">
      <div class="row">


<?php
    $query = "SELECT * FROM dogadjaji WHERE kategorija_id = ".$post_id;

    $result = mysqli_query($DB, $query);

    if(mysqli_num_rows($result) > 0)
    {
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
}
?>

</main>


<footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2019 Eventinijum</p>
</footer>
</body>
</html>
