<?php 
include 'header.php';
include 'menu.php';
?>

	<!-- gallery area start -->
<div class="gallery">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<center><h1>Our Works</h1></center><hr>
            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance3.jpg"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance3.jpg"
                         alt="Another alt text">
                </a>
            </div>



            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance4.jpg"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance4.jpg">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance5.jpg"data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance5.jpg"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance6.jpg"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance6.jpg"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance7.jpg"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance7.jpg"
                         alt="Another alt text">
                </a>
            </div>



            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance8.jpg"data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance8.jpg"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance9.jpg"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance9.jpg"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance10.jpg"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance10.jpg"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance11.jpg"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance11.jpg"
                         alt="Another alt text">
                </a>
            </div>



            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance12.jpg"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance12.jpg"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance14.jpg"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance14.jpg"
                         alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-12 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="img/ambulance15.jpg"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="img/ambulance15.jpg"
                         alt="Another alt text">
                </a>
            </div>
        </div>


        <div class="modal fade" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="image-gallery-title"></h4>
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img id="image-gallery-image" class="img-responsive col-md-12" src="">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary float-left" id="show-previous-image"><i class="fa fa-arrow-left"></i>
                        </button>

                        <button type="button" id="show-next-image" class="btn btn-secondary float-right"><i class="fa fa-arrow-right"></i>
                        </button>
                    </div>
                </div>
            </div>
			</div>
		</div>
	</div>
</div>
<br><br><br>
	<!-- gallery area end -->
	<?php include 'user_footer.php';?>