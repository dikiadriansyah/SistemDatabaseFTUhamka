

<div class="container">
  <div class="row justify-content-center">
    <div class="col-lg-7">
      <div class="card p-4 shadow-lg border-0 my-4">
        <img src="<?php echo base_url() ?>/assets/img/uh.jpg">
        <h4 class="text-center">SK Pembimbing Skripsi Fakultas Teknik</h4>
        <h4 class="text-center">LOGIN</h4>
        <hr>


        <?php echo $this->session->flashdata('pesan')?>
        <form action="<?php echo base_url('auth/ceklogin') ?>" method="post">
          <div class="form-group">
            <!--<label>Username</label>-->

            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text"><i class="fas fa-user"></i></div>
              </div>
              
              <input type="text" name="username" class="form-control" placeholder="Masukkan Username Anda">
              <?php echo form_error('user','<div class="text-danger small ml-3 mt-2">','</div>');
              ?>
            </div>
          </div>

          <div class="form-group">
            <!--<label>Password</label>-->

            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text"><i class="fas fa-unlock-alt"></i></div>
              </div>
              <input type="password" name="password" class="form-control " data-toggle="password" placeholder="Masukkan Password Anda">
            
               <span class="input-group-text"><i class="fa fa-eye"></i></span>
              <?php echo form_error('password','<div class="text-danger small ml-3 mt-1">','</div>');
              ?>
            </div>
          </div>

          <button type="submit" name="login" class="btn btn-custom"  >SUBMIT</button>
          <button type="reset" class="btn btn-danger">RESET</button>
        </form>
      </div>


  <script>
    // beri tahu bingkai induk sematan tinggi konten
    if (window.parent && window.parent.parent){
      window.parent.parent.postMessage(["resultsFrame", {
        height: document.body.getBoundingClientRect().height,
        slug: "zkou4dej"
      }], "*")
    }

    // selalu menimpa window.name, jika pengguna mencoba menyetelnya secara manual
    window.name = "result"
  </script>

