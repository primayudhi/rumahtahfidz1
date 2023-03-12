<table border="1">
    <tr>
        <td>Nama Murid</td>
        <td>Tempat Lahir</td>
        <td>Tanggal Lahir</td>
        <td>Jenis Kelamin</td>
        <td>Alamat</td>
        <td>Foto</td>
        <td>No Telepon</td>
        <td>Nama Ibu</td>
        <td>Nama Ayah</td>
        <td>Username</td>
        <td>Password Murid</td>
        <td>Hak Akses</td>
        <td>Aktif</td>


    </tr>
    <?php foreach($data_murid as $row) { ?>
        <tr>
            <td><?php echo $row->nama_murid; ?></td>
            <td><?php echo $row->tempat_lahir; ?></td>
            <td><?php echo $row->tanggal_lahir; ?></td>
            <td><?php echo $row->jk; ?></td>
            <td><?php echo $row->alamat; ?></td>
            <td><?php echo $row->foto; ?></td>
            <td><?php echo $row->no_telepon; ?></td>
            <td><?php echo $row->nama_ibu; ?></td>
            <td><?php echo $row->nama_ayah; ?></td>
            <td><?php echo $row->username; ?></td>
            <td><?php echo $row->password_murid; ?></td>
            <td><?php echo $row->hak_akses; ?></td>
            <td><?php echo $row->aktif; ?></td>


            <td>
                <a href="<?php echo site_url('Murid/hapus_murid/' . $row->id_murid) ?>"> Hapus </a>
            </td>
        </tr>
    <?php } ?>

</table>

<a href="<?php echo site_url('Admin/tambah_murid_admin') ?>"> Tambah</a>

