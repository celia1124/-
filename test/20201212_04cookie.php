<?php

setcookie("mycookie","3");

//cookie需放擋頭
?>


<!DOCTYPE html>
<html lang="zh-tw">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?= $_COOKIE["mycookie"] ?>
</body>
</html>