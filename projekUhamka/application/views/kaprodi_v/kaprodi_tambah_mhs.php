<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/fontawesome-free/css/all.min.css">

  <title>SK Pembimbing Skripsi</title>
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
      <h4 style="margin-top: 80px">Tambah Mahasiswa Bimbingan</h4>
      <hr>

      <!--form -->
      <?php echo form_open_multipart('dashboardKaprodi/aksi_tmbh_mhs') ?>
      <div class="form-group">
        <label for="exampleFormControlSelect1">NIM</label>
        <select class="form-control" name="id_mhs">
          <option value="">-- Pilih NIM --</option>
          <?php foreach($dropdown_nim as $mhs) : ?>
            <option value="<?= $mhs->id_mhs ?>"><?= $mhs->nim ?>  --  <?= $mhs->nama_mhs ?> </option>
          <?php endforeach; ?>
        </select>
        <!-- <input type="number" name="nim" class="form-control"> -->
<!-- 
        <div class="form-group">
          <label for="exampleFormControlInput1">Nama</label>
          <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="nama_mhs">
 -->

<!-- 
          <div class="form-group">
            <label for="exampleFormControlInput1">tahun akademik</label>
            <select name="ta_masuk" class="form-control">
              <?php foreach($tahunakad as $thn ) : ?>
                <option value="<?= $thn->id_ta ?>"><?= $thn->semester ?> --- <?= $thn->tahun ?>  </option>
              <?php endforeach; ?>
            </select> -->
         <!--    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" value="" name="ta_masuk">
          <div class="form-group"> -->

     <!--        <div class="form-group">
              <label for="exampleFormControlInput1">prodi</label>
              <select name="id_penyelenggara" class="form-control">
                   <option>-- Plih Program Studi --</option>
                <?php foreach($penyelenggara as $py) : ?>
                  <option value="<?= $py->id_penyelenggara ?>"><?= $py->nama_penyelenggara ?></option>
                <?php endforeach; ?>
              </select> -->
              <!--      <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" value="" name="id_penyelenggara"> -->
            <!--   <div class="form-group"> -->



                <div class="form-group">
                  <label for="exampleFormControlInput1">Judul Skripsi</label>
                  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="j_skripsi"></textarea>
                  

                      <div class="form-group">
                      <label for="exampleFormControlInput1"> Sebagai Pembimbing 1 / 2</label>
                      <input type="hidden" name="id_sk" value="<?php echo $idsk; ?>">
                      <select class="form-control" name="pmb">
                       
                        <option value="id_sk1">Pembimbing 1</option>
                        <option value="id_sk2">pembimbing 2</option>
                        
                      </select>
                 <!--  <div class="form-group">
                    <label for="exampleFormControlInput1">Id_sk1</label>
                      <select class="form-control" name="id_sk1">
                        <option>-- Plih Sk 1 --</option>
                        <?php foreach ( $idsk as $isk ) : ?>
                          <option value="<?= $isk->id_skpmb ?>"><?= $isk->no_skpmb ?> -- <?= $isk->nama ?></option>
                        <?php endforeach; ?>
                      </select> -->
                    <!-- <input type="text" class="form-control" id="id_sk1" placeholder="Masukkan Sk Bimbingan 1" value="" name="id_sk1"> -->
                   <!--  <div class="form-group">

                      <div class="form-group">
                        <label for="exampleFormControlInput1">Id_sk2</label>
                         <select class="form-control" name="id_sk2">
                             <option>-- Plih Sk 2 --</option>
                              <?php foreach ( $idsk as $isk ) : ?>
                                <option value="<?= $isk->id_skpmb ?>"><?= $isk->no_skpmb ?> -- <?= $isk->nama ?></option>
                              <?php endforeach; ?>
                            </select> -->
                        <!-- <input type="text" class="form-control" id="id_sk2" placeholder="Masukkan Sk Bimbingan 2" value="" name="id_sk2"> -->
                        <div class="form-group"> 


                          <!--button tambah simpan dan kembali-->
                          <div class="text-center">
                            <button style="margin-left:20px; margin-top: 20px" type="submit" class="btn btn-success">Simpan</button>
                            <a type="submit" style="margin-left:20px; margin-top: 20px" class="btn btn-danger" href="<?= base_url('dashboardKaprodi/kaprodi') ?>"><i class="fas fa-back"></i> Kembali</a>
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