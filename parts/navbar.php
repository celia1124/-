<?php
if(!isset($pageName))$pageName='';

?>


<style>

    .navbar .nav-item.active {
        background-color: #D230B4;
        border-radius: 20px;
    }

.navbar-expand-lg{
    background-color: #EEBDEE;

}
    
</style>

<nav class="navbar navbar-expand-lg navbar-light ">
    <div class="container">
        <a class="navbar-brand" href="<?= WEB_ROOT ?>index_.php"><i class="fas fa-pastafarianism"></i></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item <?= $pageName=='db_list' ? 'active' : '' ?>">
                    <a class="nav-link" href="<?= WEB_ROOT ?>db_list.php">客製化品項 <i class="fas fa-wine-glass-alt"></i></a>
                </li>


                <li class="nav-item <?= $pageName=='db_insert' ? 'active' : '' ?>">
                    <a class="nav-link" href="<?= WEB_ROOT ?>db_insert.php">新增客製化 <i class="fas fa-wine-glass"></i></a>
                </li>


             </ul>

             <ul class="navbar-nav">
                <?php if(isset($_SESSION['admin'])): ?>
                    <li class="nav-item">
                    <a class="nav-link" href="<?= WEB_ROOT ?>db_admin-edit.php"><?= $_SESSION['admin']['account'] ?></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?= WEB_ROOT ?>logout.php">登出</a>
                    </li>
                <?php else: ?>
                    <li class="nav-item <?= $pageName=='login' ? 'active' : '' ?>">
                        <a class="nav-link" href="<?= WEB_ROOT ?>login.php">登入</a>
                    </li>
                <?php endif ?>
            </ul>

             
            


        </div>
    </div>
</nav>