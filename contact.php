<?php 
include 'header.php';
include 'menu.php';
?>

	<!-- contact area start -->
<div class="contact">    
    <div class="container">
        <div class="row">
            <center><h2>Contact Us</h2></center><hr>
            <div class=" contactar col-md-12">
                <div class="col-md-4 left">
                    <div class="contact-info">
                        <i class="fa fa-envelope"></i>
                        
                        <h4>We would love to hear from you !</h4>
                    </div>
                </div>
                <div class="col-md-8 rignt">
                    <div class="contact-form">
                        <div class="form-group">
                          <label class="control-label " for="fname">Name:</label>
                                   
                            <input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="fname">
                          
                        </div>
                        
                        <div class="form-group">
                          <label class="control-label" for="email">Email:</label>
                          
                            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                          
                        </div>
                        <div class="form-group">
                          <label class="control-label " for="comment">Comment:</label>
                          
                            <textarea class="form-control" rows="5" id="comment"></textarea>
                          
                        </div>
                        <div class="form-group">        
                          <div class="col-sm-10">
                            <button type="submit" class="btn btn-default">Submit</button>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	<!-- contact area end -->
	
	<?php include 'user_footer.php';?>