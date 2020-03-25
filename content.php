<?php
	if (empty($_GET['modul']))
		$get_modul = "home";
	else
		$get_modul = $_GET['modul'];
	$sql_modul = mysqli_query($mysqli,"select * from tb_menu where modul='$get_modul'");
	$modul = mysqli_fetch_array($sql_modul);
	
	include "modul/$modul[path]";
?>