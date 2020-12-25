-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-12-25 04:37:11
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `project11`
--

-- --------------------------------------------------------

--
-- 資料表結構 `address_book`
--

CREATE TABLE `address_book` (
  `sid` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `address_book`
--

INSERT INTO `address_book` (`sid`, `name`, `email`, `mobile`, `birthday`, `address`, `create_time`) VALUES
(1, '王小白', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(2, '王胖胖', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(3, '盧啊胖', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(4, '王5胖', 'djfsjifnjnlkis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(5, '林呵呵', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(6, '王所以', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(7, '呆呆獸', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(8, '阿呆呆', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(9, '王5胖', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(10, '林呵呵', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(11, '陳所以', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(12, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(13, '王啊胖', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(14, '王5胖', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(15, '王呵呵', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(16, '王所以', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(17, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(18, '王啊胖', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(19, '王5胖', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(20, '王呵呵', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(21, '王所以', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(22, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(23, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(24, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(25, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(26, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(27, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(28, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(29, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(30, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(31, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(32, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(33, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(34, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43'),
(35, '王那個', 'djfsjifis@gmaiil.com', '0214585236', '1990-10-12', '台北市大安區大馬路小社區200號', '2020-12-12 13:39:43');

-- --------------------------------------------------------

--
-- 資料表結構 `admins`
--

CREATE TABLE `admins` (
  `sid` int(11) NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `admins`
--

INSERT INTO `admins` (`sid`, `account`, `password`, `avatar`) VALUES
(1, 'celia', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '5fe46a90d2d1b.gif');

-- --------------------------------------------------------

--
-- 資料表結構 `custo_order`
--

CREATE TABLE `custo_order` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `banana` varchar(50) DEFAULT NULL,
  `strawberry` varchar(50) DEFAULT NULL,
  `blueberry` varchar(50) DEFAULT NULL,
  `productid` varchar(50) NOT NULL,
  `saleid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `custo_order`
--

INSERT INTO `custo_order` (`sid`, `name`, `banana`, `strawberry`, `blueberry`, `productid`, `saleid`) VALUES
(2, '客製化香檳巧克力蛋糕', 'yes', 'wewe', 'yes', 'A111', 'A111#1'),
(3, '客製化巧克力蛋糕', 'yes', 'yes', 'no', 'A110', 'A110#2'),
(4, '客製化巧克力蛋糕', 'yes', 'no', 'yes', 'A101', 'A101#3'),
(5, '客製化巧克力蛋糕', 'yes', 'no', 'no', 'A100', 'A100#4'),
(6, '客製化巧克力蛋糕', 'no', 'no', 'yes', 'A011', 'A011#5'),
(7, '客製化巧克力蛋糕', 'no', 'yes', 'no', 'A010', 'A010#6'),
(8, '客製化巧克力蛋糕', 'no', 'no', 'yes', 'A001', 'A001#7'),
(9, '客製化香草蛋糕', 'yes', 'yes', 'yes', 'B111', 'B111#8'),
(10, '客製化香草蛋糕', 'yes', 'yes', 'no', 'B110', 'B110#9'),
(11, '客製化香草蛋糕', 'yes', 'no', 'yes', 'B101', 'B101#10'),
(12, '客製化香草蛋糕', 'yes', 'no', 'no', 'B100', 'B100#11'),
(13, '客製化香草蛋糕', 'no', 'yes', 'yes', 'B011', 'B011#12'),
(14, '客製化香草蛋糕', 'no', 'yes', 'no', 'B010', 'B010#13'),
(15, '客製化香草蛋糕', 'no', 'no', 'yes', 'B001', 'B001#14'),
(16, '客製化草莓蛋糕', 'yes', 'yes', 'yes', 'C111', 'C111#15'),
(17, '客製化草莓蛋糕', 'yes', 'yes', 'no', 'C110', 'C110#16'),
(18, '客製化草莓蛋糕', 'yes', 'no', 'yes', 'C101', 'C101#17'),
(19, '客製化草莓蛋糕', 'yes', 'no', 'no', 'C100', 'C100#18'),
(20, '客製化草莓蛋糕', 'no', 'yes', 'yes', 'C011', 'C011#19'),
(21, '客製化草莓蛋糕', 'no', 'yes', 'no', 'C010', 'C010#20'),
(22, '客製化草莓蛋糕', 'no', 'no', 'yes', 'C001', 'C001#21'),
(23, 'CHOCOLATE CKAE', '', '', '', 'A01313', 'A013#6'),
(24, 'CHOCOLATE CKAE', '', '', '', 'A01313', 'A013#6'),
(25, 'CHOCOLATE CKAE', '', '', '', 'A01313', 'A013#6'),
(26, 'CHOCOLATE CKAE', '', '', '', 'A01313', 'A013#6'),
(28, 'strawberry cake', '', '', '', 'A016', 'A016#7'),
(29, '789654', '', '', '', 'A013', 'A013#6');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `account` (`account`);

--
-- 資料表索引 `custo_order`
--
ALTER TABLE `custo_order`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `address_book`
--
ALTER TABLE `address_book`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admins`
--
ALTER TABLE `admins`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `custo_order`
--
ALTER TABLE `custo_order`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
