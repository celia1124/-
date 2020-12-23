<?php
require __DIR__. '/db_connect.php';
$pageName = 'db_list';
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$output=[

];
$perPage = 5;
$t_sql = "SELECT COUNT(1) FROM custo_order";
$totalRows = $pdo->query($t_sql)->fetch()['COUNT(1)'];
$totalPages = ceil($totalRows/$perPage);
if($page<1) $page=1;
if($page>$totalPages) $page=$totalPages;

$p_sql = sprintf("SELECT * FROM custo_order 
    ORDER BY sid DESC LIMIT %s, %s",
    ($page-1)*$perPage,
    $perPage
);

$stmt = $pdo->query($p_sql);

$rows = $stmt->fetchAll();

$output=[
'page'=>$page,
'perPage'=>$perPage,
'totalRows'=>$totalRows,
'totalPages'=>$totalPages,
'rows'=>$rows,
];