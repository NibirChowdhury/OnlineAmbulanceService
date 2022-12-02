 <div class="wrapper">
		<header>
			<nav>
			
				<div class="menu-icon">
					<i class="fa fa-bars fa-2x"></i>
				</div>
				<div class="logo ">
                                    <a href="index.php"><h3 style="color: #fff;">BACHAO</h3></a>
				</div>
				<div class="menu black">
					<ul>
						<li><a href="index.php">HOME</a></li>
						<li><a href="about.php">ABOUT</a></li>
						<li><a href="gallery.php">GALLERY </a></li>
						<li><a href="contact.php">CONTACT</a></li>
						<li><a href="#"href="#" data-toggle="modal" data-target=".login-register-form">LOG IN</a></li>
						<li><a href="registration.php"><button type="button" class="bt btn btn-warning">SIGN UP FOR FREE</button></a></li>
					</ul>

				</div>
				
			</nav>
		</header>


	</div>

	
	<!-- login -->
	<div class="container login">
	<div class="row">
		
                       
			

			<!-- Login / Register Modal-->
			<div class="modal fade login-register-form" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span class="glyphicon glyphicon-remove"></span>
							</button>
							<ul class="nav nav-tabs">
								<li class="active"><a data-toggle="tab" href="#login-form"> Login <span class="glyphicon glyphicon-user"></span></a></li>
							   
							</ul>
						</div>
						<div class="modal-body">
							<div class="tab-content">
								<div id="login-form" class="tab-pane fade in active">
									<form  action="logcheck.php" method="post" enctype="multipart/form-data">
										<div class="form-group">
											<label for="email">Email:</label>
											<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
										</div>
										<div class="form-group">
											<label for="pwd">Password:</label>
											<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="remember"> Remember me</label>
										</div>
                                                                            <button type="submit" name="login" class="btn btn-default">Login</button>
									</form>
								</div>
							

							</div>
						</div>
                                   <!-- <div class="modal-footer"> -->
                                      <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
                                   <!-- </div> -->
					</div>
				</div>
			</div>
	</div>
</div>
	
	<!-- login -->
	