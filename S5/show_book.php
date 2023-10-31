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



$sql = "SELECT `book_name`,`author`,`price` FROM `books`";
$result = $db->query($sql);



if ($db->error) {
    echo "<script type='text/javascript'> window.alert('خطا در نمایش : " . $db->errno . "' ); </script>";


} else {
  
   $table = $result -> fetch_all();
   echo json_encode( $table );

    $db->close();
}