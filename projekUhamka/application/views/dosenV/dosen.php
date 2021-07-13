
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
    	<li><a href="<?= site_url('auth/logout') ?>"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
    </ul>
  </div>
</div>
</nav>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Hallo! <?php echo $this->session->userdata('username')?></h1>
    <p class="lead">Selamat Datang Di SK Pembimbing Skripsi.</p>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-12">
      <h2 style="text-align: center;margin-bottom: 30px">Daftar SK Pembimbing</h2>

      
      <!--<div class="table-container">-->
        <table id="table_id" class="table table-striped table-bordered" cellspacing="0" width="100%">
          <thead>
            <tr>
              <th>No</th>
              <th>NIDN/NIDK</th>
              <th>Tanggal SK </th>
              <th>No SK</th>
              <th>Tahun Akademik</th>
              <th>Jumlah Mahasiswa</th>
              <th>SK Skripsi</th>
              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1; ?>
            <?php 
            foreach($dosenSk as $dsk) : ?>
              <tr> 
                <td><?= $i++ ?></td>
                <td><?= $dsk->nid ?></td>
                <td><?= $dsk->tgl_skpmb ?></td>
                <td><?= $dsk->no_skpmb ?></td>
                <td><?= $dsk->tahun ?></td>
                <td><?= $dsk->jml_mhs ?></td>
                <td><a href="<?= base_url().'dashboardDosen/cetak/'.$dsk->id_skpmb; ?>"> <?= $dsk->file_sk ?></a></td>
                <td style="text-align: center;">
                  <?php echo anchor('dashboardDosen/lihat_sk/'.$dsk->id_skpmb,'<div class="btn btn-sm btn-success"><i class="fas fa-eye"></i></div>') ?>

                </td>
              </tr>
            <?php endforeach; ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div> 


