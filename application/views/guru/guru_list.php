<table>
    <tr>
        <td>ID</td>
        <td>Nama</td>
        <td>NIK</td>
        <td>Aksi</td>
    </tr>
    <?php foreach($data_guru as $row) { ?>
        <tr>
            <td><?php echo $row->id_guru; ?></td>
            <td><?php echo $row->nama_guru; ?></td>
            <td><?php echo $row->nik_guru; ?></td>
            <td>
                <a href="<?php echo site_url('Guru/hapus_guru/' . $row->id_guru) ?>"> Hapus </a>
            </td>
        </tr>
    <?php } ?>

</table>