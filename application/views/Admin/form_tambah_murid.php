<?php echo form_open($action) ?>
	Nama Murid : <input type="text" name="nama_murid" /> <?php echo form_error('nama_murid') ?><br>
	Tempat Lahir : <input type="text" name="tempat_lahir" /> <br>
	Tanggal Lahir : <input type="text" name="tanggal_lahir" /> <br>
	Jenis Kelamin : <input type="text" name="jk" /> <br>
	Alamat : <input type="text" name="alamat" /> <br>
	Foto : <input type="text" name="foto" /> <br>
	No Telepon : <input type="text" name="no_telepon" /> <br>
	Nama Ibu : <input type="text" name="nama_ibu" /> <br>
	Nama Ayah : <input type="text" name="nama_ayah" /> <br>
	Username : <input type="text" name="username" /> <br>
	Password Murid : <input type="text" name="password_murid" /> <br>
	Hak Akses : <input type="text" name="hak_akses" /> <br>
	Aktif : <input type="text" name="aktif" /> <br>

	<input type="submit" value="Simpan">
<?php echo form_close() ?>