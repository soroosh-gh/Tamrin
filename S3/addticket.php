<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Insert</title>


  <?php

  $db = new mysqli('localhost', 'root', '');
  if ($db->connect_errno) {
    echo "<script type='text/javascript'> window.alert('ارتباط با پایگاه داده برقرا نمی باشد! خطای شماره : " . $db->connect_errno . "' ); </script>";
    //  echo  $db -> connect_errno;
  
  } else {
    echo ("ارتباط با پایگاه داده برقرار است");
    echo "<br>";
  }

  $db->select_db('book_store');
  if ($db->error) {
    echo "<script type='text/javascript'> window.alert('خطا در انتخاب پایگاه داده : " . $db->errno . "' ); </script>";
    //  echo  $db -> connect_errno;
  
  } else {
    echo ("پایگاه داده انتخاب شد");
    echo "<br>";
    //$_POST['submit'] =  null ;
  }


  ?>


</head>

<body>

  <form name="insert" action=" " method="post">

    <label for="fname">First name</label>
    <input type="text" id="fname" name="fname">
    <br>
    <label for="lname"> Last name</label>
    <input type="text" id="lname" name="lname">
    <br>
    <label for="content">content </label>
    <textarea  id="content" name="content"></textarea>
    <br>
    <label for="atch"> file </label>
    <input type="file" id="atch" name="atch">
    <br>
    <input type="submit" name="submit" value="درج">

  </form>




</body>

</html>


<?php




if (
  isset($_POST['submit']) && !empty($_POST['submit'])
) {

  $fname = $_POST['fname'];
  $lname = $_POST['lname'];
  $content = $_POST['content'];
  $send = date('Y-m-d H:i:s');
  $atch = $_POST['atch'];


  $sql = "INSERT INTO `tickets`(`user_Fname`, `user_Lname`, `content`, `send_time`, `file_atch`) VALUES ('{$fname}','{$lname}','{$content}','{$send}','{$atch}')";
  $result = $db->query($sql);
  if ($db->error) {
    echo "<script type='text/javascript'> window.alert('خطا در انجام درج : " . $db->errno . "' ); </script>";


  } else {
    echo "<script type='text/javascript'> window.alert('درج انجام شد' ); </script>";
    $db->close();
  }
} else {
  echo "<script type='text/javascript'> window.alert'('مقدار دهی کنید'); </script>";
}



?>