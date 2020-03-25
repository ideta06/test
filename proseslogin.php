<?php
	include "include/database.php";
	$get_act = $_GET['act'];
	$get_id = $_GET['id'];
	$username = $_POST['username'];
	$password = $_POST['password'];
	$konfirmpassword = $_POST['konfirmpassword'];

	if ($konfirmpassword!=''){
		if ($password==$konfirmpassword){
			$save = mysqli_query($mysqli,"insert into tb_login (username, password, id_pelamar) values ('$username', '$konfirmpassword', '$get_id')");
			
			if ($save){
				echo "<script>window.location.href='main.php'</script>";
			} else{
				die('Query : '.mysqli_errno($mysqli).'-'.mysqli_error($mysqli)); 
			}
		} else {
			echo "<script>window.location.href='main.php?alert=8&id=$get_id'; alert('Password Tidak Sesuai');</script>";
		}
	} /*else {
		$login = mysqli_query($mysqli,"select * from tb_login where username='$username' AND password='$password'");
			
			if ($login){
				echo "<script>window.location.href=''</script>";
			} else{
				die('Query : '.mysqli_errno($mysqli).'-'.mysqli_error($mysqli)); 
			}
	}*/
?>