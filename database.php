<?php 
include_once("config.php");
$DB = mysqli_connect($DATABASE['host'], $DATABASE['username'], $DATABASE['password'], $DATABASE['database']);
session_start();

function check_login()
{
	if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] != true) {

		if ( (isset($_POST['username']) && isset($_POST['password'])) && $userid = admin_in_database($_POST['username'], $_POST['password'])) {
		    $_SESSION['loggedin'] = true;
		    $_SESSION['username'] = $_POST['username']; 
		    $_SESSION['userid'] = $userid;
		}else{
			return false;
		}
	}
	return true;
}
function login()
{
	if ( isset($_POST['username']) && isset($_POST['password'])){
	 	if($userid = admin_in_database($_POST['username'], $_POST['password'])) {
		    $_SESSION['loggedin'] = true;
		    $_SESSION['username'] = $_POST['username']; 
		    $_SESSION['userid'] = $userid;
		    return 2;
		}
		return 1;
	}
	return 0;
}


function goto_page($page)
{
	header("Location: ".$page);
	die();
}


function admin_in_database($username, $pass){
	global $DB;
	$username = mysqli_real_escape_string($DB, $username);
	//$pass = md5($pass); ako budemo hashovali password-e
	$pass = mysqli_real_escape_string($DB, $pass);
	$result = $DB->query("SELECT korisnik_id FROM `korisnici` WHERE `korisnik_ime`='$username' AND `korisnik_sifra`='$pass'");

	if (mysqli_num_rows($result)!=1)return 0;
	return $result->fetch_assoc()['korisnik_id'];
}

?>