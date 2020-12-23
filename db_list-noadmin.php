<?php
require __DIR__. '/db_connect.php';
$pageName = 'db_list';
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;

$perPage = 10;
$t_sql = "SELECT COUNT(1) FROM custo_order";
$totalRows = $pdo->query($t_sql)->fetch()['COUNT(1)'];
$totalPages = ceil($totalRows/$perPage);
if($page<1) $page=1;
if($page>$totalPages) $page=$totalPages;

$p_sql = sprintf("SELECT * FROM custo_order 
    ORDER BY sid ASC LIMIT %s, %s",
    ($page-1)*$perPage,
    $perPage
);

$stmt = $pdo->query($p_sql);

$rows = $stmt->fetchAll();
//echo json_encode($row, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
?>



<?php //$row = $stmt->fetch();

//echo json_encode($row, JSON_UNESCAPED_UNICODE + JSON_UNESCAPED_SLASHES);
//將陣列改成jason字串格式 ?>

<?php include __DIR__. '/parts/head.php';?>
<?php include __DIR__. '/parts/navbar.php';?>

<style>
.remove a{
  color:red;
}

.item{

background-color:#DA81DA;


}
.table{
background-color:#F7D7F7;

 margin-top:20px;
}

body{
background-color:#F7D7F7;
}

.page-link{

  background-color:#F01BF0;
  color:black;
}

.page-item.active .page-link {
    z-index: 3;
    color: white;
    background-color: #F7D7F7;
    border-color: #9B169B;
}

</style>

<div class="container">
<table class="table  table-striped table-bordered">
  <thead>
    <tr class="item">
  
      <th scope="col">編號</th>
      <th scope="col">品名</th>
      <th scope="col">配料-香蕉</th>
      <th scope="col">配料-草莓</th>
      <th scope="col">配料-藍莓</th>
      <th scope="col">產品編碼</th>
      <th scope="col">銷售編碼</th>

      
    </tr>
  </thead>
  <tbody>
  <?php foreach($rows as $r): ?>
        <tr >
            
            <td><?= $r['sid'] ?></td>
            <td><?= $r['name'] ?></td>
            <td><?= $r['banana'] ?></td>
            <td><?= $r['strawberry'] ?></td>
            <td><?= $r['blueberry'] ?></td>
            <td><?= $r['productid'] ?></td>
            <td><?= $r['saleid'] ?></td>

            

            

        </tr>
        <?php endforeach ?>
  </tbody>
</table>
</div>


<div class="container">
  <div class="row">
    <div class="col" >
    <nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item <?= $page==1 ? 'disable' : '' ?>"><a class="page-link" href="?page=1"><i class="fas fa-arrow-alt-circle-left"></i>
  </a></li>
    <li class="page-item <?= $page==1 ? 'disable' : '' ?>"><a class="page-link" href="?page=<?= $page-1 ?>"><i class="far fa-arrow-alt-circle-left"></i>
  </a></li>

  <?php for ($i="1"; $i<$totalPages+1;$i++):?>
    <li class="page-item <?= $page==$i ? 'active' : '' ?>">
                         <a class="page-link" href="?page=<?= $i ?>">
                           <?= $i ?>
                         </a>
                    </li>


   <?php endfor ?>


    <li class="page-item <?= $page==$totalPages ? 'disable' : '' ?>"><a class="page-link" href="?page=<?= $page+1 ?>"><i class="far fa-arrow-alt-circle-right"></i>
  </a></li>
    <li class="page-item <?= $page==$totalPages ? 'disable' : '' ?>"><a class="page-link" href="?page=<?= $totalPages ?>"><i class="fas fa-arrow-alt-circle-right"></i></a></li>
  </ul>
 </nav>
    </div>
  </div>
</div>

<?php include __DIR__. '/parts/scripts.php';?>
<script>


//function removeItem(event){
      //const t = event.target;
     // t.closest('tr').remove();
      //}


      function del_it(sid){
        if(confirm(`是否要刪除編號為 ${sid} 的資料?`)){
            location.href = 'delete.php?sid=' + sid;
        }
    }



</script>
<?php include __DIR__. '/parts/foot.php';?>
