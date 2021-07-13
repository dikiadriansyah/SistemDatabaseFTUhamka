

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
        <a class="nav-link js-scroll trigger" href="#">Surat Keputusan Pembimbing Skripsi<span class="sr-only">(current)</span></a>
      </li>
    </ul>

    <ul class="nav navbar-nav ml-auto">
    	<li><a href="<?php echo site_url('auth/logout') ?>"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
    </ul>
  </div>
</div>
</nav>

<div class="container" style="margin-top: 100px">
  <div class="row">
    <div class="col-md-12">
      <h2 style="text-align: center;margin-bottom: 30px">Surat Keputusan</h2>

      <a style="margin-bottom:20px; margin-left: 10px" type="submit" href="<?= base_url('sekretSK/sekretTambah'); ?>" class="btn btn-custom"><i class="fas fa-plus"></i> Tambah SK</a>

      <table id="table_id" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
          <tr>
            <th>No</th>
            <th>ID SK Pembimbing Skripsi</th>
            <th>Tgl_Sk Pembimbing Skripsi</th>
            <th>No_Sk Pembimbing Skripsi</th>
            <th>ID TA</th>
            <th>NID</th>
            <th>File SK Pembimbing Skripsi</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <?php $i = 1; ?>
          <?php foreach($sekretSK as $sk) : ?>
            <tr>
              <td> <?= $i++ ?></td>
              <td><?php echo $sk->id_skpmb  ?></td>
              <td><?php echo $sk->tgl_skpmb  ?></td>
              <td><?php echo $sk->no_skpmb ?></td>
              <td><?php echo $sk->tahun ?></td>
              <td><?php echo $sk->nid ?></td>
              <td style="text-align: center;"><?php echo $sk->file_sk ?></td>
              <td style="text-align: center;">
                <?php echo anchor('sekretSK/sekretEdit/'.$sk->id_skpmb,'<div class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i></div>') ?>

                <button class="btn btn-sm btn-danger" onclick=""><i class="fas fa-trash-alt"></i></button>
                <?php echo anchor('sekretSK/sekretEdit/'.$sk->id_skpmb,'<div class="btn btn-sm btn-info"><i class="fas fa-info-circle"></i></div>') ?>
              </td>

            </tr>

          <?php endforeach; ?>

        </tbody>
      </table>
    </div>
  </div>
</div>




