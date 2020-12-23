<?php
if(!isset($_SESSION)){
    session_start();
}
if(!isset($_SESSION['n'])){
    $_SESSION['n']=0;
}
//1. 沒有啟動過session才啟動 !isset()
//2. 若session沒有值則幫他設值為0
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?= $_SESSION['n']++ ?>
</body>
</html>