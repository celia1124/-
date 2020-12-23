INSERT INTO `address_book` (`sid`, `name`, `email`, `mobile`, `birthday`, `address`, `create_time`) 
VALUES 
(NULL, '王啊胖', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(NULL, '王5胖', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(NULL, '王呵呵', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(NULL, '王所以', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(NULL, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),

UPDATE `address_book` SET `email` = 'djfsjifnjnlkis@gmaiil.com' WHERE `address_book`.`sid` = 4;

SELECT * FROM `address_book` ORDER BY `sid` ASC
--value一律用單引號標示

<?php if(isset($_SESSION['admin'])): ?>
            <div>
                <h3>Hello <?= $_SESSION['admin'] ?></h3>
                <p><a href="logout.php">登出</a></p>
            </div>
            <?php else: ?>

