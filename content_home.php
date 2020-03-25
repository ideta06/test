<?php
	if (($get_modul=="hal_depan") or (empty($get_modul)))
		include "modul/hal_depan/view.php";
	else if ($get_modul=="register")
		include "modul/register/view.php";
	else if ($get_modul=="login")
		include "modul/login/view.php";
	else
		include "modul/hal_depan/view.php";
?>