<!DOCTYPE html>
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
      <h4 style="margin-top: 80px">Update Data SK Pembimbing</h4>
      <hr>

      <!--form -->
      <?php foreach($bimbingan as $sesk) : ?>
        <?php echo form_open_multipart('sekretSK/sekret_aksiupdate_sk') ?>
        <div class="form-group">
          <label for="exampleFormControlSelect1">NIDN/NIDK</label>
          <input type="hidden" name="id_skpmb" value="<?php echo $sesk->id_skpmb ?>">
          <select class="form-control" name="nid"  id="exampleFormControlSelect1">
           <option value="<?= $sesk->nid; ?>"><?= $sesk->nid ?> -- <?= $sesk->nama  ?></option>
           <?php foreach($nidneditskripsi as $nidedit) : ?>
             <option value="<?= $nidedit->nid; ?>"><?= $nidedit->nid; ?> || <?= $nidedit->nama; ?> </option>
           <?php endforeach; ?>          
         </select>
         
         <div class="form-group">
          <label for="exampleFormControlInput1">Tanggal SK</label>
          <input type="date" class="form-control" id="exampleFormControlInput1" placeholder="" value="<?= $sesk->tgl_skpmb ?>" name="tgl_skpmb">
          <div class="form-group">
            <label for="exampleFormControlInput1">No SK</label>
            <input type="number" min="0" class="form-control" id="exampleFormControlInput1" placeholder="" value="<?= $sesk->no_skpmb ?>" name="no_skpmb">
            <div class="form-group">
              <label for="exampleFormControlSelect1">Tahun Akademik</label>
              <select class="form-control" id="exampleFormControlSelect1" name="id_ta">
                <option value="<?= $sesk->id_ta ?>"><?= $sesk->tahun ?> -- <?= $sesk->semester  ?></option>
                <?php foreach($thneditskripsi as $thnedit) : ?>
                 <option value="<?= $thnedit->id_ta; ?>"><?= $thnedit->tahun; ?> --- <?= $thnedit->semester ?> </option>
               <?php endforeach; ?>
             </select>
             <div class="form-group">
              <label for="exampleFormControlInput1">Jumlah Mahasiswa</label>
              <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" value="<?php echo $hitungjml ?>" name="jml_mhs" readonly>
              <div class="form-group" >
                <label for="exampleFormControlInput1">SK Dosen Pembimbing</label>
                <input type="file" class="form-control" id="exampleFormControlInput1" placeholder="" name="file_sk"> 
                <input type="hidden" name="filelama" value="<?= $sesk->file_sk ?>">
                
              </div>
              <div class="text-center">
                <button style="margin-left:20px" type="submit" class="btn btn-success">Simpan</button>
              </div>
            </form>
          <?php endforeach; ?>
        </div>
        <!--form selesai-->

        <!--button tambah mhs-->
        <a style="margin-bottom:20px" type="button" class="btn btn-custom" href="<?= base_url('sekretSK/sekret_tambah_mhs/'.$sesk->id_skpmb) ?>"><i class="fas fa-plus"></i> Tambah Mahasiswa</a> 
        <!--button tambah mhs selesai-->

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
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php $i = 1; ?>
              <?php 
              foreach ($df_bimbingan as $dfs) : ?>
                <tr>
                  <td><?= $i++ ?></td>
                  <td><?= $dfs->nim ?></td>
                  <td><?= $dfs->nama_mhs ?></td>
                  <td><?= $dfs->j_skripsi ?></td>
                  <td style="text-align: center;">

                    <?php echo anchor('sekretSK/sekret_edit_mhs/'.$dfs->id_mhs,'<div class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></div>') ?>

                    <?php echo anchor('sekretSK/delete/'.$dfs->nim,'<div class="btn btn-sm btn-danger">
                    <i class="fa fa-trash"></i></div>') ?>

                    
                  </td>
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
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php $i = 1; ?>
              <?php 
              foreach ($df_bimbingan2 as $dfs) : ?>
                <tr>
                  <td><?= $i++ ?></td>
                  <td><?= $dfs->nim ?></td>
                  <td><?= $dfs->nama_mhs ?></td>
                  <td><?= $dfs->j_skripsi ?></td>
                  <td style="text-align: center;">

                    <?php echo anchor('sekretSK/sekret_edit_mhs/'.$dfs->id_mhs,'<div class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></div>') ?>

                    <?php echo anchor('sekretSK/delete/'.$dfs->nim,'<div class="btn btn-sm btn-danger">
                    <i class="fa fa-trash"></i></div>') ?>

                    
                  </td>
                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>


          <!--tabel daftara mhs selesai-->

          <!--button tambah simpan dan kembali-->
          <div class="text-center">

            <a style="margin-left:20px" type="submit" href="<?= base_url('sekretSK/admin')?>" class="btn btn-danger">Kembali</a>
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