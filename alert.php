<?php
	if (empty($_GET['alert'])){
		echo "";
	} elseif ($_GET['alert']=='1'){
		echo "<div class='alert alert-success role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
				  <strong>Berhasil!</strong> Data berhasil disimpan.
				</div>";
	} elseif ($_GET['alert']=='2'){
		echo "<div class='alert alert-danger role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
				  <strong>Gagal!</strong> Data gagal disimpan.
				</div>";		
	} elseif ($_GET['alert']=='3'){
		echo "<div class='alert alert-warning role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
				  <strong>Berhasil!</strong> Data berhasil dihapus.
				</div>";
	}  elseif ($_GET['alert']=='4'){
		echo "<div class='alert alert-danger role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
				  <strong>Gagal!</strong> Data gagal dihapus.
				</div>";
	} elseif ($_GET['alert']=='5'){
		echo "<div class='alert alert-danger role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
				  <strong>Berhasil!</strong> Anda berhasil logout.
				</div>";
	} elseif ($_GET['alert']=='6'){
		echo "<div class='alert alert-danger role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
				  <strong>Gagal!</strong> Ulangi login! Username dan Password tidak sesuai.
				</div>";
	} elseif ($_GET['alert']=='7'){
		$get_id = $_GET['id'];
		
		echo '<div class="modal-body">
        <form method="POST" action="modul/keluarga/proses.php?act=add&id='.$get_id.'">
			<div class="form-group">
				<label>Nama Ayah</label>
				<input type="text" class="form-control" name="nama_ayah" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Pekerjaan Ayah</label>
				<input type="text" class="form-control" name="pekerjaan_ayah" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Nama Ibu</label>
				<input type="text" class="form-control" name="nama_ibu" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Pekerjaan Ibu</label>
				<input type="text" class="form-control" name="pekerjaan_ibu" autocomplete="off">
			</div>
			<div class="form-group">
				<div class="text-right">
					<button type="submit" name="simpan" class="btn btn-primary"><i class="fas fa-save"></i> Next</button>
				</div>				
			</div>
		</form>
      </div>';
	} elseif ($_GET['alert']=='8'){
		$get_id = $_GET['id'];

		echo '<div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>
        <div class="card-body">
          <form method="POST" action="proseslogin.php?id='.$get_id.'">
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" id="inputEmail" name="username" class="form-control" placeholder="Username" required="required" autofocus="autofocus">
                <label for="inputEmail">Username</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required="required">
                <label for="inputPassword">Password</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="inputPassword" name="konfirmpassword" class="form-control" placeholder="konfirmpassword" required="required">
                <label for="inputPassword">konfirmpassword</label>
              </div>
            </div>
			<input type="submit" class="btn btn-primary btn-block" value="Login" name="login">
          </form>
        </div>
      </div>
    </div>';
	} elseif ($_GET['alert']=='9'){
		$get_id = $_GET['id'];
		
		echo '<div class="modal-body">
        <form method="POST" action="modul/saudara/proses.php?act=add&id='.$get_id.'">
			<div class="form-group">
				<label>Nama Saudara</label>
				<input type="text" class="form-control" name="nama_saudara" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Tempat Lahir</label>
				<input type="text" class="form-control" name="tempat_lahir" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Tanggal Lahir</label>
				<input type="text" class="form-control datepicker" name="tanggal_lahir" autocomplete="off">
			</div>	
			<div class="form-group">
				<label>Jenis Kelamin</label>
				<select name="status" class="select2bs4 form-control">
					<option value="1">Laki-laki</option>
					<option value="2">Perempuan</option>
				</select>
			</div>
			<div class="form-group">
				<label>Pekerjaan</label>
				<input type="text" class="form-control" name="pekerjaan" autocomplete="off">
			</div>
			<div class="form-group">
				<div class="text-right">
					<button type="submit" name="simpan" class="btn btn-primary"><i class="fas fa-save"></i> Next</button>
				</div>				
			</div>
		</form>
      </div>';
	} elseif ($_GET['alert']=='10'){
		$get_id = $_GET['id'];
		
		echo '<div class="modal-body">
        <form method="POST" action="modul/anggotakeluarga/proses.php?act=add&id='.$get_id.'">
			<div class="form-group">
				<label>Nama Anggota Keluarga</label>
				<input type="text" class="form-control" name="nama_anggota_keluarga" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Tempat Lahir</label>
				<input type="text" class="form-control" name="tempat_lahir" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Tanggal Lahir</label>
				<input type="text" class="form-control datepicker" name="tanggal_lahir" autocomplete="off">
			</div>	
			<div class="form-group">
				<label>Jenis Kelamin</label>
				<select name="status" class="select2bs4 form-control">
					<option value="1">Laki-laki</option>
					<option value="2">Perempuan</option>
				</select>
			</div>
				<label>Status</label>
				<select name="statu_ed" class="select2bs4 form-control">
				<option value="1">Suami</option>
				<option value="2">Istri</option>
				<option value="3">Adik Kandung</option>
				<option value="4">Kakak Kandung</option>
				</select>
			</div>
			<div class="form-group">
				<label>Pekerjaan</label>
				<input type="text" class="form-control" name="pekerjaan" autocomplete="off">
			</div>
			<div class="form-group">
				<div class="text-right">
					<button type="submit" name="simpan" class="btn btn-primary"><i class="fas fa-save"></i> Next</button>
				</div>				
			</div>
		</form>
      </div>';
	} elseif ($_GET['alert']=='11'){
		$get_id = $_GET['id'];
		
		echo '<div class="modal-body">
        <form method="POST" action="modul/pendidikan/proses.php?act=add&id='.$get_id.'">
			<div class="form-group">
				<label>Jenjang Pendidikan</label>
				<select name="statu_ed" class="select2bs4 form-control">
				<option value="1">SMA</option>
				<option value="2">D3</option>
				<option value="3">S1</option>
				<option value="4">S2</option>
				</select>
			</div>
			<div class="form-group">
				<label>Nama Sekolah</label>
				<input type="text" class="form-control" name="nama_sekolah" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Jurusan</label>
				<input type="text" class="form-control" name="jurusan" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Kota</label>
				<input type="text" class="form-control" name="kota" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Tahun Masuk</label>
				<input type="text" class="form-control" name="tahun_masuk" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Tahun Lulus</label>
				<input type="text" class="form-control" name="tahun_lulus" autocomplete="off">
			</div>
			<div class="form-group">
				<div class="text-right">
					<button type="submit" name="simpan" class="btn btn-primary"><i class="fas fa-save"></i> Next</button>
				</div>				
			</div>
		</form>
      </div>';
	} elseif ($_GET['alert']=='12'){
		$get_id = $_GET['id'];
		
		echo '<div class="modal-body">
        <form method="POST" action="modul/kursus/proses.php?act=add&id='.$get_id.'">
			<div class="form-group">
				<label>Jenis</label>
				<input type="text" class="form-control" name="jenis" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Nama Kegiatan</label>
				<input type="text" class="form-control" name="nama_kegiatan" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Instansi Penyelenggara</label>
				<input type="text" class="form-control" name="instansi_penyelenggara" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Tahun Kegiatan</label>
				<input type="text" class="form-control" name="tahun_kegiatan" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Kota</label>
				<input type="text" class="form-control" name="kota" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Sertifikat</label>
				<input type="text" class="form-control" name="sertifikat" autocomplete="off">
			</div>
			<div class="form-group">
				<div class="text-right">
					<button type="submit" name="simpan" class="btn btn-primary"><i class="fas fa-save"></i> Next</button>
				</div>				
			</div>
		</form>
      </div>';
	} elseif ($_GET['alert']=='13'){
		$get_id = $_GET['id'];
		
		echo '<div class="modal-body">
        <form method="POST" action="modul/aktivitas/proses.php?act=add&id='.$get_id.'">
			<div class="form-group">
				<label>Nama Aktivitas</label>
				<input type="text" class="form-control" name="nama_aktivitas" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Tampat Aktivitas</label>
				<input type="text" class="form-control" name="tempat_aktivitas" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Jabatan</label>
				<input type="text" class="form-control" name="jabatan" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Tanggal Aktivitas</label>
				<input type="text" class="form-control datepicker" name="tgl_aktivitas" autocomplete="off">
			</div>	
			<div class="form-group">
				<label>Hobby</label>
				<input type="text" class="form-control" name="hobby" autocomplete="off">
			</div>
			<div class="form-group">
				<div class="text-right">
					<button type="submit" name="simpan" class="btn btn-primary"><i class="fas fa-save"></i> Next</button>
				</div>				
			</div>
		</form>
      </div>';
	} elseif ($_GET['alert']=='14'){
		$get_id = $_GET['id'];
		
		echo '<div class="modal-body">
        <form method="POST" action="modul/pekerjaan/proses.php?act=add&id='.$get_id.'">
			<div class="form-group">
				<label>Nama Perusahaan</label>
				<input type="text" class="form-control" name="nama_perusahaan" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Jabatan</label>
				<input type="text" class="form-control" name="jabatan" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Alamat</label>
				<input type="text" class="form-control" name="alamat" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Tanggal Masuk</label>
				<input type="text" class="form-control datepicker" name="tgl_masuk" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Tanggal Keluar</label>
				<input type="text" class="form-control datepicker" name="tgl_keluar" autocomplete="off">
			</div>	
			<div class="form-group">
				<label>Alasan Keluar</label>
				<input type="text" class="form-control" name="alasan_keluar" autocomplete="off">
			</div>
			<div class="form-group">
				<div class="text-right">
					<button type="submit" name="simpan" class="btn btn-primary"><i class="fas fa-save"></i> Next</button>
				</div>				
			</div>
		</form>
      </div>';
	} elseif ($_GET['alert']=='15'){
		$get_id = $_GET['id'];
		
		echo '<div class="modal-body">
        <form method="POST" action="modul/seputarlamaran/proses.php?act=add&id='.$get_id.'">
			<div class="form-group">
				<label>Alasan melamar di Rumah Sakit Condong Catur</label>
				<input type="text" class="form-control" name="alasan melamar" autocomplete="off">
			</div>
			<div>
				<label>Lingkungan pekerjaan yang disukai</label>
				<select name="lingkungan_pekerjaan_ed" class="select2bs4 form-control">
				<option value="1">Kantor</option>
				<option value="2">Lapangan</option>
				<option value="2">Lain-lain</option>
				</select>
			</div>
			<div class="form-group">
				<label>Gaji yang diharapkan</label>
				<input type="text" class="form-control" name="gaji_yang_diharapkan" autocomplete="off">
			</div>
			<div class="form-group">
				<label>Bersedia menjalani magang 3 bulan</label>
				<select name="terkait_magang_ed" class="select2bs4 form-control">
				<option value="1">Iya</option>
				<option value="2">Tidak</option>
				</select>
			</div>
			<div class="form-group">
				<label>Bersedia menjalani masa kontrak 1 tahun</label>
				<select name="terkait_kontrak_ed" class="select2bs4 form-control">
				<option value="1">Iya</option>
				<option value="2">Tidak</option>
				</select>
			</div>	
			<div class="form-group">
				<label>Bersedia ditugaskan di luar dalam rangka tugas dinas RS</label>
				<select name="terkait_tugas_luar_ed" class="select2bs4 form-control">
				<option value="1">Iya</option>
				<option value="2">Tidak</option>
				</select>
			</div>
			<div class="form-group">
				<label>Bersedia menaati dan menjalankan peraturan perusahaan</label>
				<select name="terkait_peraturan_ed" class="select2bs4 form-control">
				<option value="1">Iya</option>
				<option value="2">Tidak</option>
				</select>
			</div>
			<div class="form-group">
				<div class="text-right">
					<button type="submit" name="simpan" class="btn btn-primary"><i class="fas fa-save"></i> Next</button>
				</div>				
			</div>
		</form>
      </div>';
	} elseif ($_GET['alert']=='16'){
		echo "<div class='alert alert-danger role='alert'>
  				<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
				  <strong>Gagal!</strong> Anda masih memiliki lamaran aktif.
				</div>";
	}	