<?php

$db = new mysqli('localhost', 'root', '');
if ($db->connect_errno) {
    echo "<script type='text/javascript'> window.alert('ارتباط با پایگاه داده برقرا نمی باشد! خطای شماره : " . $db->connect_errno . "' ); </script>";

} else {
    echo ("ارتباط با پایگاه داده برقرار است");
    echo "<br>";
}

$db->select_db('book_store');
if ($db->error) {
    echo "<script type='text/javascript'> window.alert('خطا در انتخاب پایگاه داده : " . $db->errno . "' ); </script>";


} else {
    echo ("پایگاه داده انتخاب شد");
    echo "<br>";

}



$sql = "SELECT `user_Fname`,`user_Lname`,`username`,`password` FROM `user` ";
$result = $db->query($sql);

$adminsql = "SELECT `user_id`, `user_Fname`, `user_Lname`, `username`, `password`, `type`, `status` FROM `user` ";
$adminresult = $db->query($adminsql);


if ($db->error) {
    echo "<script type='text/javascript'> window.alert('خطا در نمایش : " . $db->errno . "' ); </script>";


} else {
echo "for user : ";
   $table = $result -> fetch_all();
   echo json_encode( $table );
echo "-------------------------";
   echo "\n for admin : ";
   $table2 = $adminresult -> fetch_all();
   echo json_encode( $table2 );

    $db->close();
}