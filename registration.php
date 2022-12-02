<?php 
include 'header.php';
include 'menu.php';
?>
	<!-- registration area-->
	
	
	
	

<div class=" registration container">
    <h1 class="well1">Registration Form</h1>
	<hr />
	
	<div class="col-lg-12 well">
            <div class="row">
                <form action="registration.php" method="POST" enctype="multipart/form-data">
                        <div class="col-sm-12">
                            <div class="row">
                                    <div class="col-sm-6 form-group">
                                            <label>First Name</label>
                                            <input type="text" name="first_name" placeholder="Enter First Name Here.." class="form-control">
                                    </div>
                                    <div class="col-sm-6 form-group">
                                            <label>Last Name</label>
                                            <input type="text" name="last_name" placeholder="Enter Last Name Here.." class="form-control">
                                    </div>
                            </div>					
                            <div class="form-group">
                                    <label>Address</label>
                                    <textarea name="address" placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>
                            </div>	
                            <div class="row">
                                    <div class="col-sm-4 form-group">
                                            <label>City</label>
                                            <input type="text" name="city" placeholder="Enter City Name Here.." class="form-control">
                                    </div>	
                                    <div class="col-sm-4 form-group">
                                            <label>State</label>
                                            <input type="text" name="state" placeholder="Enter State Name Here.." class="form-control">
                                    </div>	
                                    <div class="col-sm-4 form-group">
                                            <label>Zip</label>
                                            <input type="text" name="zip" placeholder="Enter Zip Code Here.." class="form-control">
                                    </div>		
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                        <label>NID</label>
                                        <input type="text" name="nid" placeholder="Enter Designation Here.." class="form-control">
                                </div>		
                                <div class="col-sm-6 form-group">
                                        <label>AGE</label>
                                        <input type="text" name="age" placeholder="Enter Company Name Here.." class="form-control">
                                </div>
                                <div class="col-sm-6 form-group">
                                        <label>GENDER</label><br />
                                        <input type="radio" name="gender" value="male" checked> Male<br>
                                        <input type="radio" name="gender" value="female"> Female<br>
                                </div>
                                <div class="col-sm-6 form-group">
                                        <label>Date of Birth</label><br />
                                        <input type="date" name="date" class="form-control" >

                                </div>	
                            </div>						
                            <div class="form-group">
                                    <label>Phone Number</label>
                                    <input type="text" name="phone" placeholder="Enter Phone Number Here.." class="form-control">
                            </div>		
                            <div class="form-group">
                                    <label>Email Address</label>
                                    <input type="text" name="email" placeholder="Enter Email Address Here.." class="form-control">
                            </div>	
                            <div class="form-group">
                                    <label>BLOOD GROUP</label>
                                    <select name="blood"  class="form-control">
                                            <option value="AB+">AB+</option>
                                            <option value="AB-">AB-</option>
                                            <option value="A+">A+</option>
                                            <option value="A-">A-</option>
                                            <option value="B+">B+</option>
                                            <option value="B-">B-</option>
                                            <option value="O+">O+</option>
                                            <option value="O-">O-</option>
                                      </select>
                            </div>
                             <div class="form-group">
                                    <label>Photo</label>
                                    <input  type="file" name="photo">
                            </div> 
                            <div class="form-group">
                                    <label>password</label>
                                    <input type="text" name="pass" placeholder="Enter password" class="form-control">
                            </div>
                            <input type="hidden" name="type" class="form-control" id="#" value="2"/>
                            <button type="submit" name="submit" class="res_btn btn btn-lg btn-info">Submit</button>					
                            </div>
                    </form> 
                <?php  
include 'db/connect.php';
 if(isset($_POST['submit'])){
                $first_name=$_POST['first_name'];
                $last_name= $_POST['last_name'];
                $address= $_POST['address'];
                $city= $_POST['city'];
                $state= $_POST['state'];
                $zip= $_POST['zip'];
                $nid=$_POST['nid'];
                $age=$_POST['age'];
                $gender=$_POST['gender'];
                $date=$_POST['date'];
                $phone=$_POST['phone'];
              $email=$_POST['email'];
              $blood=$_POST['blood'];
                $type=$_POST['type'];
                $pass=$_POST['pass'];
                        
                 $photo_name = $_FILES['photo']['name'];
                
                    $diry = "img";
                    copy($_FILES['photo']['tmp_name'],"$diry/$photo_name");
                   $photo="$diry/$photo_name";

                    
                //validation area start
                $select=  mysql_query("SELECT * FROM registration WHERE nid='$nid'");
                $num=  mysql_num_rows($select);
                if(empty($_POST['nid'])){
                    echo "Fill the box please.";
                }else if ($num>0) {
                    echo "already have this student.";
        //validation area end
    }else{
        //insert area 
                $insert= mysql_query("INSERT INTO registration VALUES('','$first_name','$last_name','$address','$city','$state','$zip','$nid','$age','$gender','$date','$phone','$email','$blood','$photo','$pass',$type)");
            
                $insert = mysql_query("INSERT INTO users (username,pass,email,type)
VALUES ('$first_name','$pass', '$email','$type')");
                
                if($insert){
                    echo "sucess";
                }else{
                    echo "not done";
                }
            }
            
                }
                
                ?>
                
                    </div>
	</div>
</div>
<?php include 'user_footer.php';?>