<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
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

  .jumbotron {
    background-color: white;
    max-height: 150px;
  }

      /*.table-container {
      overflow: auto;
      }*/
    </style>
  </head>
  <body>

    <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
     <div class="container">
      <span class="navbar-brand mb-0 h1">SK Pembimbing Skripsi</span>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
  <!--<div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link js-scroll trigger" href="#">Data SK Pembimbing Skripsi<span class="sr-only">(current)</span></a>
      </li>
    </ul>-->

    <ul class="nav navbar-nav ml-auto">
    	<li><a href="<?php echo site_url('auth/logout') ?>"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
    </ul>
  </div>
</div>
</nav>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Hallo <?php echo $this->session->userdata('username')?>!</h1>
    <p class="lead">Selamat Datang di SK Pembimbing Skripsi.</p>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-12">
      <h2 style="text-align: center;margin-bottom: 30px">Daftar SK Pembimbing</h2>

      <a type="submit" style="margin-bottom:20px; margin-left: 10px" class="btn btn-custom" href="<?= base_url('sekretSK/sekret_tambahsk/') ?>"><i class="fas fa-plus"></i> Tambah</a>
      <?php echo $this->session->flashdata('pesan') ?>
      <!--tabel data skripsi-->
      <table id="table_id" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
          <tr>
            <th>No</th>
            <th>NIDN/NIDK</th>
            <th>Dosen</th>
            <th>Tanggal SK</th>
            <th>No SK</th>
            <th>Tahun Akademik</th>
            <th>Jumlah Mahasiswa</th>
            <th>SK Skripsi</th>
            <th>Edit</th>
            <th>Hapus</th>
          </tr>
        </thead>
        <tbody>
          <?php $i = 1; ?>

          

          <?php foreach($sekretSK as $ssk) : ?>

            <tr>
              <td><?= $i++ ?></td>
              
              <td><?= $ssk->nid ?></td>
              <td><?= $ssk->nama ?></td>
              <td><?= $ssk->tgl_skpmb ?></td>
              <td><?= $ssk->no_skpmb ?></td>
              <td><?= $ssk->tahun ?> -- <?= $ssk->semester ?> </td>
              <td><?= $ssk->jml_mhs  ?></td>
              <td><a href="<?= base_url().'sekretSK/download_sk/'.$ssk->id_skpmb; ?>"><?= $ssk->file_sk ?></a></td>
              <td style="text-align: center;">

                <?php echo anchor('sekretSK/sekret_editsk/'.$ssk->id_skpmb,'<div class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> </div>') ?>

                 
              </td>
              <td style="text-align: center;">

               <a href="<?=base_url()?>sekretSK/hapus_sk/<?=$ssk->id_skpmb?>/<?=$ssk->file_sk?>" class="btn btn-sm btn-danger" role="button"> <i class="fa fa-trash"></i> </a>


               
             </td>
           </tr>
         <?php endforeach; ?>
       </tbody>
     </table>
     <!--tabel data skripsi--> 
   </div>
 </div>
</div>
</div>





<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
  $(document).ready( function () {
    $('#table_id').DataTable();
  } );
</script>
</body>
</html>