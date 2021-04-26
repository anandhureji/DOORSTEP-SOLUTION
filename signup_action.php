<?php


	session_start();

	include "admin/class/public_function.php" ;
	$pub = new pub();

	extract($_POST);

	if(!isset($guide))
	{
		$guide=0;
	}

	if($re_password!=$password)
	{
		$_SESSION["emsgbox"]="Password not match";
		header("Location:index.php");
		exit();
	}

	if ( $pub->sugnUp($name,  $uaeremail,  $password,  $phone, $address,  $guide) ==1 )
	{	
		$_SESSION["smsgbox"]="User created";

	}
	else
	{
		$_SESSION["emsgbox"]="Error creating User";
	}


	header("Location:index.php");



?>