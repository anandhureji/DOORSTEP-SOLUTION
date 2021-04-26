<?php


	session_start();

	include "admin/class/public_function.php" ;
	$pub = new pub();

	extract($_POST);

	if(!isset($guide))
	{
		$guide=0;
	}


	if ( $pub->updateProfile($name, $phone, $address, $guide,$_SESSION["s_user_id"]) ==1 )
	{	
		$_SESSION["smsgbox"]="User Updated";

	}
	else
	{
		$_SESSION["emsgbox"]="Error updating User";
	}


	header("Location:edit_profile.php");




	


?>