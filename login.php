<?php
require __DIR__. '/db_connect.php';

$pageName = 'login';



if(isset($_POST['account']) and isset($_POST['password']) ){

    $sql = "SELECT * FROM admins WHERE account=? AND password=SHA1(?) ";

    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        $_POST['account'],
        $_POST['password'],
    ]);

    $row = $stmt->fetch();
    if(empty($row)){
        $errorMsg = '帳號或密碼錯誤';
    } else {
        $_SESSION['admin'] = $row;
    }
}
?>
<?php include __DIR__. '/parts/head.php';?>
<?php include __DIR__. '/parts/navbar.php';?>

<style>
h3{
    margin-top:20px;
  }

  img{
      width:480px;
      height:450px;
  }

  body{
  background-color:#F7D7F7;
}

.card{

    margin:50px;
    border-radius:20px;
}
.card-body{

    background-color:#AA4488;
    border-radius:20px;
}
.btn-primary {
    color: #fff;
    background-color: #F563C4;
    border-color: #F563C4;
    border-radius:60px;
}

</style>


<div class="container">
    <div class="row d-flex justify-content-center">
        <div class="col-lg-6">
            <?php if(isset($errorMsg)): ?>
            <div class="alert alert-danger" role="alert">
                <?= $errorMsg ?>
            </div>
            <?php endif ?>
            <?php if(isset( $_SESSION['admin'])) :?>
              <div>
                <h3>Bienvenido <?= $_SESSION['admin']['account'] ?></h3>
                <div><img src="./img/cryingcat.png"></div><br>
               <p><a href="logout.php"><i class="fas fa-sign-out-alt"></i>登出</p>
              </div>
             
              <?php else : ?>
            <div class="card" >
                <div class="card-body">
                    <h5 class="card-title">登入<i class="fas fa-door-closed"></i></h5>

                    <form method="post">
                        <div class="form-group">
                            <label for="account">Account</label>
                            <input type="text" class="form-control" id="account" name="account"
                                    value="<?= htmlentities($_POST['account']  ?? '') ?>">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password"
                                   value="<?= htmlentities($_POST['password'] ?? '')  ?>">
                        </div>
                        <!--
                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" value="1"
                                   id="exampleCheck1" name="exampleCheck1"
                                   <?php // echo isset($_POST['exampleCheck1']) ? 'checked' : '' ?> >
                            <label class="form-check-label" for="exampleCheck1">Check me out</label>
                        </div>
                        -->
                        <button type="submit" class="btn btn-primary">給我按下去^_^</button>
                    </form>


                </div>
            </div>
            <?php endif ?>
        </div>
    </div>



</div>




<?php include __DIR__. '/parts/foot.php';?>
<?php include __DIR__. '/parts/scripts.php';?>