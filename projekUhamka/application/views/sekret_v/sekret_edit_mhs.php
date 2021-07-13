<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/fontawesome-free/css/all.min.css">

  <title>SK Pembimbing Skripsi</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


  <style>
    .fa-sign-out-alt {
      color: red;
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
      <h4 style="margin-top: 80px">Update Mahasiswa Bimbingan</h4>
      <hr>

      <!--form -->
      <?php foreach($sekret_edit_mhs as $sem) : ?>
        <form action="<?php echo site_url('sekretSK/aksi_edit_mhs') ?>"  method="post">

          <div class="form-group">
            <label >NIM</label>
            <input type="hidden" name="id_mhs" value="<?php echo $sem->id_mhs ?>">
            <select class="form-control" name="nim" readonly>
              <?php foreach ($sekret_edit_mhs as $sem ) :?>
                <option value="<?php echo $sem->nim ?>"><?= $sem->nim ?></option>
              <?php endforeach; ?>
            </select>
            
            <?php echo form_error('nim','<div class="text-danger small" ml-3>'); ?>

            <div class="form-group">
              <label for="exampleFormControlInput1">Nama</label>

              <input type="text" class="form-control" id="nama_mhs" placeholder="" value="<?php echo $sem->nama_mhs ?>" name="nama_mhs" readonly>
              <div class="form-group">
                <label for="exampleFormControlInput1">Judul Skripsi</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="j_skripsi"><?php echo $sem->j_skripsi ?></textarea>
              <?php endforeach; ?>
              <!--form selesai-->

              <!--button tambah simpan dan kembali-->
              <div class="text-center">
                <button style="margin-left:20px; margin-top: 20px" type="submit" class="btn btn-success">Simpan</button>

                <a style="margin-left:20px; margin-top: 20px" type="submit" onclick="javascript:history.back()" class="btn btn-danger">Kembali</a>
              </form>
            </div>
            <!--button tambah simpan dan kembali selesai-->




            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

          </body>

          </html>