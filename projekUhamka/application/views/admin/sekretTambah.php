<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto&display=swap">

  <title>SK - Tambah</title>

  <style>
    body {
      background-image: -moz-linear-gradient(0deg, #004A83 100%, #004A83 100%);
      background-image: -webkit-linear-gradient(0deg, #004A83 100%, #004A83 100%);
      background-image: -ms-linear-gradient(0deg, #004A83 100%, #004A83 100%);
      font-family: 'Roboto', sans-serif;
      color: #004A83
    }

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

 <div class="container" style="margin-top:100px">
  <div class="row justify-content-center">
    <div class="col-lg-7">
      <div class="card p-4 shadow-none border-0 my-4">
        <h4 font-weight-bold>Tambah SK Pembimbing Skripsi</h4>

        <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
          <div class="container">
            <a class="navbar-brand" href="#">
              <img src="img/uhamka.png" width="150" height="60" alt="" loading="lazy">
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item active">
                  <a class="nav-link js-scroll trigger" href="#">Surat Keputusan<span class="sr-only">(current)</span></a>
                </li>
              </ul>

              <ul class="nav navbar-nav ml-auto">
                <li><a href="<?php echo site_url('auth/logout') ?>"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
              </ul>
            </div>
          </div>
        </nav>



        <form action="<?php echo base_url('sekretSK/tambah_aksi/') ?>" method="post" enctype="multipart/data">
          <div class="container" style="margin-top:20px">
            <div class="form-group row">
              <label for="" class="col-sm-4 col-form-label">ID SK Pembimbing Skripsi</label>
              <div class="col-sm-8">
                <input type="text" class="form-control" name="id_skpmb" id="">
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-sm-4 col-form-label">No SK</label>
              <div class="col-sm-8">
                <input type="text" class="form-control" name="no_skpmb" id="">
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-sm-4 col-form-label">Tanggal SK</label>
              <div class="col-sm-8">
                <input type="date" class="form-control" name="tgl_skpmb" id="">
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-sm-4 col-form-label">ID TA</label>
              <div class="col-sm-8">
                <input type="text" class="form-control" name="id_ta" id="">
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-sm-4 col-form-label">NID</label>
              <div class="col-sm-8">
                <input type="text" class="form-control" name="nid" id="">
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-sm-4 col-form-label">Jumlah Mahasiswa</label>
              <div class="col-sm-8">
                <input type="text" class="form-control" name="jml_mhs" id="">
              </div>
            </div>
            <div class="form-group row">
              <label for="" class="col-sm-4 col-form-label">Beban SKS</label>
              <div class="col-sm-8">
                <input type="text" class="form-control" name="beban_sks" id="">
              </div>
            </div>
            <div class="form-group">
              <label for="exampleFormControlFile1">File SK</label>
              <input type="file" class="form-control-file" name="file_sk" id="file_sk">
            </div>

            <button style="margin-top:20px; margin-right: 10px" type="submit" class="btn btn-custom"><i class="fas fa-save"></i> Simpan</button>
            <a style="margin-top:20px; margin-right: 10px" type="submit"  class="btn btn-warning" href="<?= base_url('sekretSK/admin/') ?>"><i class="fas fa-save"></i> Kembali</a>

          </form>
        </div>
      </form>





      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </script>
  </body>
  </html>