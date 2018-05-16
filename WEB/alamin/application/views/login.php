<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login Admin Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bootstrap/css/bs.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/eksternal/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/eksternal/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <section class="login-block">
    <div class="container">
  <div class="row">
    <div class="col-md-4 login-sec">
       <a href="<?php echo base_url('Auth'); ?>"><h2 class="text-center"  style="color: #27ae60;">LOGIN</h2></a>
        <form action="<?php echo base_url('Auth/login'); ?>" class="login-form">
  <div class="form-group">
    <label for="exampleInputEmail1" >Username</label>
    <input type="text" class="form-control" placeholder="" name="USERNAME_ADMIN">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1" >Password</label>
    <input type="password" class="form-control" placeholder="" name="PASSWORD_ADMIN">
  </div>
  
  
    <div class="form-check">
    
    <button type="submit" class="btn btn-login float-right" style="background-color: #27ae60">Masuk</button>

    <?php
        echo show_err_msg($this->session->flashdata('error_msg'));
      ?>
  </div>
      <script src="<?php echo base_url(); ?>assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js"></script>
  
</form>
<div class="copy-text">Created  <i class="fa fa-heart"></i> by <a href="http://jti.polije.ac.id/prodi/tif">Teknik Informatika Polije</a></div>
    </div>
    <div class="col-md-8 banner-sec">
      
    <div class="carousel-item active">
      <img style="height: 100%" class="d-block img-fluid" src="https://situsbudaya.id/wp-content/uploads/2017/10/masjid-jami-al-baitul-amien.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>AL Baitul Amin</h2>
            <p>AL Baitul Amin adalah sebuah yayasan pendidikan berbasis islam yang ada di daerah jember</p>
        </div>  
  </div>
    </div>
    </div>
  </div>
  </div>           
    </div>
  </div>
</div>
</section>
<!--   <body class="hold-transition login-page">
    <div class="login-box">
      <div class="login-logo"> -->
      <!--   <a href="<?php //echo base_url(); ?>assets/index2.html"><b>Login Admin Yayasan Pendidikan Al-Baitul Amien</b></a> -->
      <!-- </div> -->

      <!-- /.login-logo -->
            <!-- <div class="login-box-body"> -->
        <!-- <p class="login-box-msg"> -->
          <!-- Log in to start your session -->
        <!-- </p> -->

        <!-- <form action="<?php //echo base_url('Auth/login'); ?>" method="post"> -->
<!--           <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Username" name="USERNAME_ADMIN">
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="Password" name="PASSWORD_ADMIN">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div> -->
          <!-- <div class="row"> -->
            <!-- <div class="col-xs-8">
              <div class="checkbox icheck">
                <label>
                  <input type="checkbox"> Remember Me
                </label>
              </div>
            </div> -->
<!--             <div class="col-xs-offset-8 col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
            </div>
          </div>
        </form> -->

        <!-- <div class="social-auth-links text-center">
          <p>- OR -</p>
          <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
            Facebook</a>
          <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
            Google+</a>
        </div> -->
        <!-- /.social-auth-links -->

        <!-- <a href="#">I forgot my password</a><br>
        <a href="register.html" class="text-center">Register a new membership</a> -->

      <!-- </div> -->
      <!-- /.login-box-body -->
<!--       <?php
     //   echo show_err_msg($this->session->flashdata('error_msg'));
      ?>
 -->    <!-- </div> -->
    

    <!-- /.login-box -->

    <!-- jQuery 2.2.3 -->
    <script src="<?php echo base_url(); ?>assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <!-- <script src="<?php //echo base_url(); ?>assets/plugins/iCheck/icheck.min.js"></script> -->
    <!-- <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script> -->
  </body>
</html>
