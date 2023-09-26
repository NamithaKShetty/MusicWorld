<?php include 'db_connect.php' ?>
<div class="container-fluid">
	<form action="" id="signup">
		<div class="col-lg-12">
			<div class="row">
				<div class="col-md-6">
				<div id="msg"></div>
					<div class="row">
							<div class="form-group col-md-6">
								<input type="text" class="form-control" placeholder="First name" name='firstname'>
							</div>
							<div class="form-group col-md-6">
								<input type="text" class="form-control" placeholder="Last name" name='lastname'>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<input type="email" class="form-control" placeholder="Email" name='email'>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<input type="password" class="form-control" placeholder="Password" name='password'>
							</div>
						</div>
					
						<div class="row justify-content-center">
							<button class="btn btn-block btn-success col-sm-5 align-self-center"><b>Sign Up</b></button>
						</div>
	</form>
</div>
<style>
	#uni_modal .modal-footer{
		display:none 
	}
</style>
<script>
	$('#signup').submit(function(e){
		e.preventDefault()
		$('#msg').html('')
		start_load()
		$.ajax({
			url:"ajax.php?action=signup",
			data: new FormData($(this)[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
			success:function(resp){
				if(resp == 1){
					location.replace("index.php?page=home")
				}else if(resp ==2){
					$('#msg').html("<div class='alert alert-danger'>Email already exist.</div>")
					end_load()
				}
			}
		})
	})
	function displayImgProfile(input,_this) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	$('#profile').attr('src', e.target.result);
	        }

	        reader.readAsDataURL(input.files[0]);
	    }
	}
</script>
