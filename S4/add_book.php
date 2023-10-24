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



$sql = "INSERT INTO `books` (`book_name`, `author`, `genre`, `description`, `price`) VALUES ('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction',
 'A classic novel depicting the decadence and disillusionment of the Jazz Age.', 12.99)";
$result = $db->query($sql);
if ($db->error) {
    echo "<script type='text/javascript'> window.alert('خطا در انجام درج : " . $db->errno . "' ); </script>";


} else {
    echo "<script type='text/javascript'> window.alert('درج انجام شد' ); </script>";
    var_dump($result);
    $db->close();
}


?>