<?php

	session_start();

	include "admin/class/public_function.php" ;
	$pub = new pub();

	extract($_POST);


	$result = $pub->login($email, md5($password) );

	if(mysqli_num_rows($result))
	{
		$row = mysqli_fetch_array($result) ;

		$_SESSION["s_user_id"]= $row["user_id"];

		$_SESSION["smsgbox"]= "Login Success!";
		header("Location:index.php");
	}
	else
	{
		$_SESSION["emsgbox"]= "Invalid login.";
		header("Location:index.php");
	}


	


?>