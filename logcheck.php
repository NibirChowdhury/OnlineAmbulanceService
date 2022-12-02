<?php
session_start();
include 'db/connect.php'; 
if(isset($_POST['login'])){
    $name =$_POST['email'];
    $pass = $_POST['password'];
    
    $select = mysql_query("SELECT * FROM users WHERE email='$name' && pass='$pass'");
    $row = mysql_num_rows($select);
    $fetch = mysql_fetch_array($select);
    if($row==1){
        $_SESSION['users_id']=$fetch['user_id'];
        $_SESSION['email'] = $fetch['email'];
     $_SESSION['type'] = $fetch['type'];
        
   
        $user_type = $fetch['type']; 
    
    if($user_type==1){
        echo "<script type= 'text/javascript'> window.location.replace('admin/admindashboard.php'); </script>";
    }elseif($user_type==2){
            echo "<script type= 'text/javascript'> window.location.replace('reg_user/reg_index.php'); </script>";
        }
        elseif($user_type==3){
            echo "<script type= 'text/javascript'> window.location.replace(''); </script>";
        }
        
        
    }else{
        $_SESSION['msg'] = "wrong user name Or password";
        echo "<script type='text/javascript'> window.location.replace('index.php'); </script>";
    }
}

  
?>
