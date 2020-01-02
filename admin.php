<?php 
require("database.php");
if(!check_login()) 
	goto_page("login.php");
//echo "welcome".$_SESSION['username'];
?>
