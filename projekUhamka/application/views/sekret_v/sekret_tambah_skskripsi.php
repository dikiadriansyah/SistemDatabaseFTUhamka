<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">

  <title>SK Pembimbing Skripsi</title>
  <style>
    .fa-sign-out-alt {
      color: red;
    }

    .btn-custom {
      color: #ffffff; 
      background-color: #004A83; 
    }

    .btn-custom:hover, 
    .btn-custom:focus, 
    .btn-custom:active, 
    .btn-custom.active, 
    .open .dropdown-toggle.btn-custom { 
      color: #ffffff; 
      background-color: #003157; 
    } 
  </style>

</head>
<body>
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <span class="navbar-brand mb-0 h1">SK Pembimbing Skripsi</span>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <ul class="nav navbar-nav ml-auto">
        <li><a href="<?php echo site_url('auth/logout') ?>"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <div class="row">
    <div class="col-md-12">
      <h4 style="margin-top: 80px">Tambah Data SK Pembimbing</h4>
      <hr>

      <!--form -->
      <?php echo form_open_multipart('sekretSK/aksitambah_sk') ?>
      <div class="form-group">
        <label for="exampleFormControlSelect1">NIDN/NIDK</label>
        <select class="form-control" name="nid">
          <option value="">-- Pilih NIDN/NIDK --</option>
          <?php foreach($nidneditskripsi as $dsn) : ?>
            <option value="<?= $dsn->nid ?>"><?= $dsn->nid ?>  --  <?= $dsn->nama ?> </option>
          <?php endforeach; ?>
        </select>

        <label for="exampleFormControlInput1">Tanggal SK</label>
        <input type="date" class="form-control"  placeholder="" name="tgl_skpmb">

        <div class="form-group">
          <label for="exampleFormControlInput1">No SK</label>
          <input type="number" min="0" class="form-control"  placeholder="Masukkan No SK Pembimbing" name="no_skpmb">

          <div class="form-group">
            <label for="exampleFormControlSelect1">Tahun Akademik</label>
            <select class="form-control" name="id_ta">
              <option value="">-- Pilih Tahun Akademik --</option>
              <?php foreach($thneditskripsi as $thn) : ?>
                <option value="<?= $thn->id_ta ?>">  <?= $thn->semester ?> || <?= $thn->tahun ?></option>
              <?php endforeach; ?>

            </select>
            <div class="form-group">
              <label for="exampleFormControlInput1">Jumlah Mahasiswa</label>
              <input type="text" class="form-control"  placeholder="" value="" name="jml_mhs">

              <div class="form-group">
                <label for="exampleFormControlInput1">SK Dosen Pembimbing</label>
                <input type="file" class="form-control"  placeholder="" name="file_sk">

                <div class="text-center">

                  <button type="submit" style="margin-top:20px"  class="btn btn-success">Simpan</button>
                  <a type="submit" style="margin-top:20px" type="button" class="btn btn-danger" href="<?= base_url('sekretSK/admin') ?>">Kembali</a>
                </div>

              </div>
            </form>
            <!--form selesai-->



           <!--  <div class="container">
              <h4 style="margin-top: 20px">Daftar Mahasiswa Bimbingan</h4>
              <hr>
              <?php echo $this->session->flashdata('pesan') ?> -->
              <!--button tambah mhs-->
              <!--      <a type="submit" style="margin-bottom:20px; margin-left: 10px" class="btn btn-custom" href="<?= base_url('sekretSK/sekret_tambah_mhs/') ?>"><i class="fas fa-plus"></i> Tambah Mahasiswa</a> -->
              <!--button tambah mhs selesai-->

              <!--tabel daftar mhs-->
            <!--   <table id="table_id" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>NIM</th>
                    <th>Nama</th>
                    <th>Judul</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $i = 1; ?>
                  <?php foreach($sekretmhsbim as $smhsbim) : ?>
                    <tr>
                      <td><?= $i++ ?></td>
                      <td><?= $smhsbim->nim ?></td>
                      <td><?= $smhsbim->nama_mhs ?></td>
                      <td><?= $smhsbim->j_skripsi ?></td>
                      <td style="text-align: center;">

                       <?php echo anchor('sekretSK/sekret_edit_mhs/'.$smhsbim->id_mhs,'<div class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i>Edit</div>') ?>



                       <?php echo anchor('sekretSK/delete/'.$smhsbim->nim,'<div class="btn btn-sm btn-danger">
                       <i class="fa fa-trash"></i></div>') ?>
                     </td>
                   </tr>
                 <?php endforeach; ?>
               </tbody>
             </table> -->
             <!--tabel daftara mhs selesai-->

             <!--button tambah simpan dan kembali-->
             
             <!--button tambah simpan dan kembali selesai-->

             <!-- Optional JavaScript -->
             <!-- jQuery first, then Popper.js, then Bootstrap JS -->
             <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
             <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
             <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
             <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
             <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
             <script type="text/javascript">
              $(document).ready( function () {
                $('#table_id').DataTable();
              } );
              </body>
              </html>