<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto&display=swap">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css/login.css">


  <title>Login</title>
 
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  



<script type="text/javascript">
  window.onload=function(){
    
    !function(a){a(function()
      {
        a('[data-toggle="password"]').each(function()
        {
          var b = a(this); var c = a(this).parent().find(".input-group-text"); 
          c.css("cursor", "pointer").addClass("input-password-hide"); 
          c.on("click", function(){
            if (c.hasClass("input-password-hide")){c.removeClass("input-password-hide").addClass("input-password-show"); 
            c.find(".fa").removeClass("fa-eye").addClass("fa-eye-slash");
            b.attr("type", "text")
          } else
          {
            c.removeClass("input-password-show").addClass("input-password-hide");
            c.find(".fa").removeClass("fa-eye-slash").addClass("fa-eye"); 
            b.attr("type", "password")}})})})}(window.jQuery);


  }
</script>


</head>
<body>