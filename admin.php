<?php 
require("database.php");
if(!check_login()) 
	goto_page("login.php");
?>
