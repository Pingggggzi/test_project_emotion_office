<?php
$db = mysqli_connect('localhost','root','','userdata');
if(!$db) {
    echo "Database connection failed";
}

$username = $_POST['usernameEmployer'];
$password = $_POST['passwordEmployer'];

$sql = "SELECT * FROM  login WHERE usernameEmployer = '".$usernameEmployer."' AND passwordEmployer = '".$passwordEmployer."'";

$result = mysqli_query($db,$sql);
$count = mysqli_num_rows($result);

if($count == 1) {
    echo json_encode("Error");
}else{
    $insert = "INSERT INTO login(usernameEmployer,passwordEmployer)VALUES('".$usernameEmployer."','".$passwordEmployer."')";
    $query = mysqli_query($db,$insert);
    if($query) {
        echo json_encode("Success");
    }
}

?>