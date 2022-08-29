<?php
$db = mysqli_connect('localhost','root','userdata');
if (!$db) {
    echo "Database connection failed";
}

$video = $_FILES['video'];

$videoPath = 'uploadVideo/'.$video;
$tmp_name = $_FILES['video']['tmp_name'];

move_uploaded_file($tmp_name,$videoPath);

$db->query("INSERT INTO video(video)VALUES('".$video."')");

?>