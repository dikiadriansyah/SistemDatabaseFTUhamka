 <div class="container" style="margin-top:100px">
  <div class="row justify-content-center">
    <div class="col-lg-7">
      <div class="card p-4 shadow-none border-0 my-4">
        <h4 font-weight-bold>Edit SK</h4>
        <!--NAVBAR-->
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

        <?php foreach($sekretSK as $sk) : ?>
          <!--FORM-->
          <form action="<?php echo base_url().'sekretSK/update' ?>" method="post">
            <div class="container" style="margin-top:20px">
              <div class="form-group row">
                <label for="" class="col-sm-4 col-form-label">ID SK Pembimbing Skripsi</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" id="id_skpa" name="id_skpmb" value="<?php echo $sk->id_skpmb ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="" class="col-sm-4 col-form-label">No SK Pembimbing Skripsi</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" id="" value="<?php echo $sk->no_skpmb ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="" class="col-sm-4 col-form-label">Tanggal SK Skripsi</label>
                <div class="col-sm-8">
                  <input type="date" class="form-control" id="" value="<?php echo $sk->tgl_skpmb ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="" class="col-sm-4 col-form-label">Tahun Akademik</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" id="" value=" <?php echo $sk->tahun ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="" class="col-sm-4 col-form-label">Nomor Induk Dosen</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" id="" value="<?php echo $sk->nid ?>">
                </div>
              </div>
              <div class="form-group row">
                <label for="" class="col-sm-4 col-form-label">Jumlah Mahasiswa</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" id="" value="<?php echo $sk->jml_mhs ?>">
                </div>
              </div>
              
              <div class="form-group">
                <label for="exampleFormControlFile1">File SK Pembimbing Skripsi</label>
                <input type="file" class="form-control-file" id="file_sk" name="file_sk" value="<?php echo $sk->file_sk ?>">
              </div>
              <!--Button Simpan-->
              <button style="margin-top:20px; margin-right: 10px" type="submit"  class="btn btn-custom"><i class="fas fa-save"></i> Simpan</button>
              <a style="margin-top:20px; margin-right: 10px" type="submit"  class="btn btn-warning" href="<?= base_url('sekretSK/admin/') ?>"><i class="fas fa-save"></i> Kembali</a>
            </form>

          <?php endforeach; ?>
        </div>
      </form>



