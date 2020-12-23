<?php
date_default_timezone_set('Asia/Taipei');
echo date("Y-m-d H:i:s");
//mysql儲存格是
//預設時間為德國柏林時間可在前方加入date_default_timezone_set('亞洲/城市')
echo '<br>';
echo date("Y-m-d H:i:s",time()-30*24*60*60);
//計算之前時間,可用於優惠卷計算
