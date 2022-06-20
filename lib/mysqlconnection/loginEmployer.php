<?php
$db = mysqli_connect('localhost','root','','userdata');
$username = $_POST['usernameEmployer'];
$password = $_POST['passwordEmployer'];

$sql = "SELECT * FROM  login WHERE usernameEmployer = '".$usernameEmployer."' AND passwordEmployer = '".$passwordEmployer."'";

$result = mysqli_query($db,$sql);
$count = mysqli_num_rows($result);

if($count == 1) {
    echo json_encode("Success");
}else{
    echo json_encode("Error");
}

?>