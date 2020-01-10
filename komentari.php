<?php 
require("database.php");
if(check_login()){
    include("admin_header.php");
}else{
    include("guest_header.php");
}

?>
<!doctype html>
<html lang="en">
  <head>
    <link href="css/komentari.css" rel="stylesheet">
    <!-- ne dirati ovaj CDN potreban je za animaciju prikaza forme za dodavanje komentara -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $( document ).ready(function() {
           $('.dodaj_comment').click(function(){
               $(this).hide();
               $('#comment').slideToggle("slow");
           });
        });
    </script>
    <?php
            if($_SERVER['REQUEST_METHOD'] == 'POST')
            {
                
                $post_id = (int) $_POST['id'];
                echo '<script type="text/javascript">alert(Id je "'.$post_id.'");</script>';

                $query = "SELECT * FROM dogadjaji WHERE dogadja_id = ".$post_id;
                $komentar_query = "SELECT * FROM komentari WHERE dogadjaj_id=".$post_id;
                $DB->set_charset('utf8');
                $result = mysqli_query($DB, $query);
                $result2 = mysqli_query($DB,$komentar_query);

                if(mysqli_num_rows($result) > 0)
                {
                    $row = mysqli_fetch_array($result);
                   
                }
            }

            if($post_id == "" || is_null($post_id))
            {
                //header("Location: admin_menu.php");
            }

            if (isset($_POST['COMMENT_SUBMIT'])) 
            {
                if($_POST['komentator']==''){
                    $komentator="Anonymous";
                }else{
                    $komentator = $_POST['komentator'];
                }
                $query = "INSERT INTO komentari (komentar_tekst,dogadjaj_id,komentator) VALUES('".$_POST['komentar']."',".$post_id.",'$komentator')";         
                mysqli_query($DB, $query);
                if(check_login()){
                header("Location: admin_menu.php"); 
                }else{
                header("Location: guest_menu.php"); 
                }      
            }elseif(isset($_POST['delete_comment'])){
            $query = "DELETE FROM komentari WHERE komentar_id = ".$_POST['komentar_id'];
            $result = mysqli_query($DB, $query);
            header("Location: admin_menu.php");
            } 
            else 
            {
            }
      ?>
    </head>

  

<body class="bg-light">
    <div class="container">
        <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="ikona.ico" alt="" width="72" height="72">
            <h2>Komentari</h2>
        </div>
        <div class='komentari_cont'>
              <p id='koment_naziv'><?php echo $row["naziv"]?></p>
              <p><?php echo $row["detalji"] ?></p>
              <p><?php echo substr($row["datum"], 0,10); ?></p>
              <p>Komentari</p>
              <?php
                 if(mysqli_num_rows($result2) > 0){
                    while($row2 = mysqli_fetch_assoc($result2)) {
                        echo "<div class='komentar'>";
                            echo "<p class='font-weight-bold'>";
                                echo $row2['komentator'];
                            echo "</p>";
                            echo "<p>";
                                echo $row2['komentar_tekst'];
                            echo "</p>";
                            if(check_login()){
                                echo "<form action='' method='POST'>";
                                    echo "<input type='hidden' name='komentar_id' value='".$row2['komentar_id']."'>";
                                    echo "<div class='obrisi_btn'><input type='submit' name='delete_comment' value='OBRISI' role='button' class='btn btn-danger'></div>";
                                echo "</form>";
                            }
                        echo "</div>";
                        
                    }
                 }

              ?>
              <button class='dodaj_comment btn btn-outline-info ml-2'>Dodaj Komentar</button>
              <div class='new_comment' id='comment'>
                    <form action="" method='POST'>
                        <input type='text' name='komentator' placeholder='Unesite svoje ime...' class='form-control komentator' value=''>
                        <textarea name="komentar" rows="5" cols="100"></textarea>
                        <input type="hidden" name="id" value="<?php echo $post_id; ?>">
                        <input type='submit' name='COMMENT_SUBMIT' value='POSTAVI KOMENTAR' role='button' class='btn btn-outline-info'>
                    </form>

              </div>
              
        </div>
   </div>
   <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2019 Eventinijum</p>
  </footer>
</body>
</html>

