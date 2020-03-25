<?php
	error_reporting(0);
	
	session_start();
	include "include/database.php";	
	include "include/function.php";
	include "include/fungsi_tanggal.php";
	$get_modul = $_GET['modul'];
?>
<!DOCTYPE html>
<html>
<?php
	include "layout/header.php";
?>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
<div class="wrapper">
  <?php
	include "layout/navbar.php";
	if (empty($_SESSION['id_login']))
		include "layout/sidebar_home.php";
	else
		include "layout/sidebar.php";
  ?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark"><?php echo name_from_modul($get_modul);?></h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
		<?php
			include "alert.php";
			if (empty($_SESSION['id_login']))
				include "content_home.php";
			else
				include "content.php";
		?>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; <?php echo date('Y');?> e-recruitment.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.0.1
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<?php
	include "layout/footer.php";
?>
</body>
</html>
