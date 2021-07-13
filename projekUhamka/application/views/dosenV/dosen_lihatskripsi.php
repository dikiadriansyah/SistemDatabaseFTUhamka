
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/fontawesome-free/css/all.min.css">
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
      <h4 style="margin-top: 80px">Lihat Data SK Pembimbing</h4>
      <hr>

      <!--form -->
      <?php  foreach($dosenSk as $dlsk) : ?>
        <form>
          <fieldset disabled>
            <div class="form-group">
              <label for="exampleFormControlSelect1">NIDN/NIDK</label>
              <select class="form-control" id="exampleFormControlSelect1" value="">
                <option><?= $dlsk->nid ?></option>
                
              </select>
              <div class="form-group">
                <label for="exampleFormControlInput1">Nama Dosen</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" value="<?= $dlsk->nama ?>" placeholder="">
                <div class="form-group">
                  <label for="exampleFormControlInput1">Tanggal SK</label>
                  <input type="date" value="<?= $dlsk->tgl_skpmb ?>" class="form-control" id="" placeholder="">
                  <div class="form-group">
                    <label for="exampleFormControlInput1">No SK</label>
                    <input type="number" value="<?= $dlsk->no_skpmb ?>" min="0" class="form-control" id="exampleFormControlInput1" placeholder="">
                    <div class="form-group">
                      <label for="exampleFormControlSelect1">Tahun Akademik</label>
                      <select class="form-control" id="exampleFormControlSelect1 " value="">
                        <option><?= $dlsk->tahun ?> --- <?= $dlsk->semester ?></option>
                        
                      </select>
                      <div class="form-group">
                        <label for="exampleFormControlInput1">Jumlah Mahasiswa</label>
                        
                        <input type="text" value="<?php echo $hitungjml ?>" class="form-control" id="exampleFormControlInput1" placeholder="">   
                        
                        <div class="form-group">
                          <label for="exampleFormControlInput1">SK Dosen Pembimbing</label>
                          <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" value="<?= $dlsk->file_sk ?>">
                        </fieldset>
                      </div>
                    <?php endforeach; ?>
                    <!--form selesai-->

                    <div class="container">
                      <h4 style="margin-top: 20px">Daftar Mahasiswa Bimbingan</h4>
                      <hr> 

                      <!--tabel daftar mhs-->
                      <h4 style="margin-top: 20px">sebagai pembimbing 1</h4>
                      <table id="table_id" class="table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                          <tr>
                            <th>No</th>
                            <th>NIM</th>
                            <th>Nama</th>
                            <th>Judul</th>
                            
                          </tr>
                        </thead>
                        <tbody>
                          <?php $i = 1; ?>
                          <?php
                          foreach($mhsbimbingan as $mhsb) : ?>
                            <tr>
                              <td><?= $i++ ?></td>
                              <td><?= $mhsb->nim ?></td>
                              <td><?= $mhsb->nama_mhs ?></td>
                              <td><?= $mhsb->j_skripsi ?></td>
                              
                              
                            </tr>
                          <?php endforeach; ?>
                        </tbody>
                      </table>


                      <h4 style="margin-top: 20px">sebagai pembimbing 2</h4>
                      <table id="table_id" class="table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                          <tr>
                            <th>No</th>
                            <th>NIM</th>
                            <th>Nama</th>
                            <th>Judul</th>
                            
                          </tr>
                        </thead>
                        <tbody>
                          <?php $i = 1; ?>
                          <?php
                          foreach($mhsbimbingan2 as $mhsb) : ?>
                            <tr>
                              <td><?= $i++ ?></td>
                              <td><?= $mhsb->nim ?></td>
                              <td><?= $mhsb->nama_mhs ?></td>
                              <td><?= $mhsb->j_skripsi ?></td>
                              
                              
                            </tr>
                          <?php endforeach; ?>
                        </tbody>
                      </table>
                      <!--tabel daftara mhs selesai-->

                      <!--button tambah simpan dan kembali-->
                      <div class="text-center">
                        <a style="margin-left:20px;margin-bottom: 20px" type="button" class="btn btn-danger" href="<?= base_url('dashboardDosen/dosen') ?>">Kembali</a>
                      </div>
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