<?php
	session_start();
	session_destroy();
	echo "<script>location='main.php?modul=hal_depan';</script>";
?>