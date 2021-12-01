-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 07:16 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mgldefi`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_verify`
--

CREATE TABLE `email_verify` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `verify_code` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_verify`
--

INSERT INTO `email_verify` (`id`, `email`, `verify_code`) VALUES
(1, 'test1@gmail.com', '8380'),
(2, 'dev@gmail.com', '9555'),
(3, 'teset3@mglcoin.io', '2422'),
(4, 'test5@gmail.com', '4786'),
(5, 'test6@gmail.com', '3873'),
(6, 'test7@gmail.com', '1643'),
(7, 'test8@gmail.com', '8320'),
(8, 'test9@gmail.com', '1115'),
(9, 'test10@gmail.com', '6630'),
(10, 'test11@gmail.com', '8016'),
(11, 'test12@gmail.com', '3972'),
(12, 'test13@gmail.com', '9611'),
(13, 'test14@gmail.com', '6594'),
(14, 'test15@gmail.com', '4813'),
(15, 'test16@gmail.com', '0793'),
(16, 'test17@gmail.com', '1112'),
(17, 'test18@gmail.com', '2849'),
(18, 'test19@gmail.com', '9983'),
(19, 'test20@gmail.com', '7312'),
(20, 'devsh@gmail.com', '6844'),
(21, 'test@gmail.com', '6971');

-- --------------------------------------------------------

--
-- Table structure for table `ieo`
--

CREATE TABLE `ieo` (
  `id` int(11) NOT NULL,
  `token_address` varchar(42) NOT NULL,
  `token_name` varchar(20) NOT NULL,
  `token_symbol` varchar(10) NOT NULL,
  `token_description` varchar(1000) NOT NULL,
  `token_website` varchar(100) NOT NULL,
  `token_fb` varchar(100) NOT NULL,
  `token_pic` varchar(100) NOT NULL,
  `token_decimals` int(11) NOT NULL,
  `total_supply` double NOT NULL,
  `presale_supply` double NOT NULL,
  `presale_price` float NOT NULL,
  `list_price` float NOT NULL,
  `min_buy` double NOT NULL,
  `max_buy` double NOT NULL,
  `start_time` varchar(30) NOT NULL,
  `end_time` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `raised_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manage_user`
--

CREATE TABLE `manage_user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `have_wallet` tinyint(1) NOT NULL,
  `wallet_address` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manage_user`
--

INSERT INTO `manage_user` (`id`, `email`, `have_wallet`, `wallet_address`) VALUES
(1, 'info@mglcoin.io', 1, '0x071ea2d17d6ade0b4be8a0693d8aee3195151d3c'),
(2, 'test1@gmail.com', 0, ''),
(3, 'dev@gmail.com', 1, '0xb9d98264915f092e1a6133b98d7fb38efd671199'),
(4, 'teset3@mglcoin.io', 0, ''),
(6, 'test5@gmail.com', 0, ''),
(7, 'test6@gmail.com', 0, ''),
(8, 'test7@gmail.com', 0, ''),
(10, 'test9@gmail.com', 0, ''),
(11, 'test10@gmail.com', 0, ''),
(13, 'test12@gmail.com', 0, ''),
(14, 'test13@gmail.com', 0, ''),
(15, 'test14@gmail.com', 0, ''),
(16, 'test15@gmail.com', 0, ''),
(17, 'test16@gmail.com', 0, ''),
(18, 'test17@gmail.com', 0, ''),
(19, 'test18@gmail.com', 0, ''),
(20, 'test19@gmail.com', 0, ''),
(21, 'test20@gmail.com', 0, ''),
(22, 'test@gmail.com', 1, '0xb9d98264915f092e1a6133b98d7fb38efd671199');

-- --------------------------------------------------------

--
-- Table structure for table `p2p`
--

CREATE TABLE `p2p` (
  `id` int(11) NOT NULL,
  `seller_name` varchar(30) NOT NULL,
  `completed_orders` varchar(1000) NOT NULL,
  `currency` enum('USDT','MGL') NOT NULL,
  `amount_usdt` double NOT NULL,
  `amount_mgl` double NOT NULL,
  `payment_method` enum('Bank transfer','Cash') NOT NULL,
  `price_usdt` float NOT NULL,
  `price_mgl` float NOT NULL,
  `terms_conditions` varchar(1000) NOT NULL,
  `facebook_link` varchar(100) NOT NULL,
  `telegram_link` varchar(100) NOT NULL,
  `skype_link` varchar(100) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`) VALUES
(1, 'test@gmail.com'),
(2, 'test1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `top_tokens`
--

CREATE TABLE `top_tokens` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `daily_percent` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `top_tokens`
--

INSERT INTO `top_tokens` (`id`, `name`, `symbol`, `price`, `daily_percent`) VALUES
(1, 'Bitcoin', 'BTC', 58697.54283751868, 8.6897859),
(2, 'Ethereum', 'ETH', 4436.715667442225, 9.69541766),
(3, 'Binance Co', 'BNB', 624.4539342917543, 7.32568738),
(4, 'Tether', 'USDT', 1.000910657146911, 0.0741955),
(5, 'Solana', 'SOL', 210.34237174176724, 13.1317912),
(6, 'Cardano', 'ADA', 1.6207115625196655, 11.47099356),
(7, 'XRP', 'XRP', 0.99263475033213, 8.97123247),
(8, 'USD Coin', 'USDC', 1.0000380887426665, 0.04877027),
(9, 'Polkadot', 'DOT', 37.17068740254163, 12.47252084),
(10, 'Dogecoin', 'DOGE', 0.21677081213726906, 11.14040165);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `from_id` text NOT NULL,
  `to_id` text NOT NULL,
  `token` varchar(42) NOT NULL,
  `amount` float NOT NULL,
  `network` varchar(20) NOT NULL,
  `to_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `user_id`, `hash`, `from_id`, `to_id`, `token`, `amount`, `network`, `to_admin`) VALUES
(1, 3, '0xc9785fd5ade9cb975a5845b87f8369ff2220467537260d5e27acdadc35749d53', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0x071ea2d17d6ade0b4be8a0693d8aee3195151d3c', '0x0000000000000000000000000000000000001010', 5e15, 'polygon-mainnet', 1),
(2, 3, '0x2196a78d9c933565bf24ae5d567698bf0836e3adc16d09e94fedd0d7c7b602a1', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0x071ea2d17d6ade0b4be8a0693d8aee3195151d3c', '0xc2132d05d31c914a87c6611c10748aeb04b58e8f', 50000, 'polygon-mainnet', 1),
(3, 3, '0xc4601af578a85933c73bfccf6c97ad160951ffd6fb75c8f8928b4e4fa8881481', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0x071ea2d17d6ade0b4be8a0693d8aee3195151d3c', '0xc2132d05d31c914a87c6611c10748aeb04b58e8f', 50000, 'polygon-mainnet', 1),
(4, 3, '0x3ada9977c914293a29fda873d206248ded1b066f4e89d29655809da8e9fdd976', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0x0000000000000000000000000000000000001010', 5e16, 'polygon-mainnet', 1),
(5, 3, '0xca3949e68a05dbcb2bc4eae5812377444a604a57f7837fbb322bbff3adf6432a', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0x071ea2d17d6ade0b4be8a0693d8aee3195151d3c', '0xc2132d05d31c914a87c6611c10748aeb04b58e8f', 10000, 'polygon-mainnet', 1),
(6, 3, '0x9568abd194569501d57a5ace04a25348c25b4b2631c0984d639c709cf4e8a0d4', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0xc2132d05d31c914a87c6611c10748aeb04b58e8f', 50000, 'polygon-mainnet', 0),
(7, 1, '0x6fd2a7aed27b62c5f5fdee1d24df241b135d9d69f0cafd1e91d39adcc641a3c9', '0x071ea2d17d6ade0b4be8a0693d8aee3195151d3c', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0x0000000000000000000000000000000000001010', 100000000000000, 'polygon-mainnet', 0),
(8, 1, '0xf9be53c5a1a5879ddb823faf734bc6e8d93d76e7b95d9aeb81d7a3af4a263917', '0x071ea2d17d6ade0b4be8a0693d8aee3195151d3c', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0x0000000000000000000000000000000000001010', 100000000000000, 'polygon-mainnet', 0),
(9, 1, '0xeafc96ed8b4626b623fb3e086a3905628b789637fe61a6e094de4bc222512bd5', '0x071ea2d17d6ade0b4be8a0693d8aee3195151d3c', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0x0000000000000000000000000000000000001010', 100000000000000, 'polygon-mainnet', 0),
(10, 1, '0x535a3aaf0dc77e648767bb6786cf5d6839707bff31f4b73991996e4beeab1e7a', '0x071ea2d17d6ade0b4be8a0693d8aee3195151d3c', '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0x0000000000000000000000000000000000001010', 100000000000000, 'polygon-mainnet', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `country` varchar(30) NOT NULL,
  `invite_code` int(11) NOT NULL,
  `role` varchar(10) NOT NULL,
  `get_bnb` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `country`, `invite_code`, `role`, `get_bnb`) VALUES
(1, 'info@mglcoin.io', '$2a$08$0jDkU2V337gMOONHZgX0OepzgQZLzIYDVv4o64.4nwY2VolH.hip.', 'Taiwan', 0, 'Super', 0),
(2, 'test1@gmail.com', '$2a$08$E.lj7ncm8lstINTHpJTTbexcyRpClqjD765Q2rXLH2XMDn1NsBuAu', 'Ukraine', 0, 'General', 0),
(3, 'dev@gmail.com', '$2a$08$xibM/fDEwbz1fvbyz8pVA.vKS/A11V2qTLtdyTJrBIPqwlqC41LH6', 'United Kingdom', 0, 'General', 0),
(4, 'teset3@mglcoin.io', '$2a$08$kwC0eDLz7DzkHaT.FzpBkOcRrK7butXuooYpIzKVPWXqirYbm3/Zy', 'United Kingdom', 0, 'General', 0),
(6, 'test5@gmail.com', '$2a$08$f63yg3RgmXsFsl.FLZ46RepaWik.y6XM.qRZOsE0JMANu6QoTEhKG', 'Taiwan', 0, 'General', 0),
(7, 'test6@gmail.com', '$2a$08$Sl5Vhg6pGidT73IM80wNse6PtLShzEWylZIwAjeTGm4qj0/.EhQ2W', 'Taiwan', 0, 'General', 0),
(8, 'test7@gmail.com', '$2a$08$cwU4pUYYiIOp9FSUMSd74O4nVkop8AZR4qCU0skt9jyH2Ggp0Ucde', 'Mongolia', 1, 'General', 0),
(10, 'test9@gmail.com', '$2a$08$3p6ro/bIU4RSnir.i227SOWpMavqW3nnj7b0b/1CiE0fY57RLGOpG', 'Mongolia', 1, 'General', 0),
(11, 'test10@gmail.com', '$2a$08$5iJpr7b9EWg/spDCuDL7K.gCKREH1/uuj5s6Ova6ea6d91OaEst22', 'Taiwan', 1, 'General', 0),
(13, 'test12@gmail.com', '$2a$08$Oz9xoNcMsiIuwYQ4ECsN5.UIuUjHpM00lGGgfyNkM0J3wzeutJwLG', 'Taiwan', 1, 'General', 0),
(14, 'test13@gmail.com', '$2a$08$tgi217gPUgzmR8UlkhcLQuuavotA0UZ947LaRVJpYg4d9CMyzZs8i', 'Taiwan', 1, 'General', 0),
(15, 'test14@gmail.com', '$2a$08$JKtHVfAEOb7a7jOn32iqu.pzZZOJh0FiB0PPK0kScrm.QH/TXxNJS', 'Mongolia', 2, 'General', 0),
(16, 'test15@gmail.com', '$2a$08$ixQIG0iGbVfNGdNgvdt9LuyYnbp8QeqDqv/O0oYn2WR5yizO/IbPm', 'Mongolia', 2, 'General', 0),
(17, 'test16@gmail.com', '$2a$08$vixFNELoa8q2ZDza61l/reB1HBU2CSy8Ula33bY1Ou7d3bTm7hpo6', 'Mongolia', 2, 'General', 0),
(18, 'test17@gmail.com', '$2a$08$tiQyMc5yHwVLspAMZmQPQeBFkc27K4F7EuqiJNcfUYbn2zurkxEQO', 'Mongolia', 2, 'General', 0),
(19, 'test18@gmail.com', '$2a$08$op/Xews9m6kmh2rmkLCToe2dE7AjDQo7R4iNlMjJqtBha/4bNUUB.', 'Mongolia', 2, 'General', 0),
(20, 'test19@gmail.com', '$2a$08$Qnl.2KgK8XzqnjcTnAoKPuy0jRyIjEdgmWD3uU9wNS2lcBdTWJ4s2', 'Mongolia', 2, 'General', 0),
(21, 'test20@gmail.com', '$2a$08$9MEDoOQy06nxA93JDDPnS.D4VE2OPF7zWiw2f10wdsYni1E6GclsW', 'Ukraine', 1, 'General', 0),
(22, 'test@gmail.com', '$2a$08$hQ8bnkzhwFCoRhkl21EhzOu9POfkbY5ozSS6spQOPQMKCR2mdtc92', 'Taiwan', 1, 'General', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `publickey` varchar(42) NOT NULL,
  `privatekey` varchar(64) NOT NULL,
  `keyphrase` text NOT NULL,
  `polygon_tokensymbol` varchar(1000) NOT NULL,
  `polygonmain_assets` text NOT NULL,
  `polygontest_assets` text NOT NULL,
  `network` text NOT NULL,
  `bsc_tokensymbol` varchar(1000) NOT NULL,
  `bscmain_assets` text NOT NULL,
  `bsctest_assets` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `user_id`, `publickey`, `privatekey`, `keyphrase`, `polygon_tokensymbol`, `polygonmain_assets`, `polygontest_assets`, `network`, `bsc_tokensymbol`, `bscmain_assets`, `bsctest_assets`) VALUES
(5, 1, '0x071ea2d17d6ade0b4be8a0693d8aee3195151d3c', '03f003be0b2a34b53ac66d495f9ded194237d6b866e1edf9341526fe3ce2852a', 'they vintage bulk buzz daughter young audit high track relax acid because', 'mgl,matic,USDT', '0xcbAe2a4625c5CB99391D8F1a0F5121B3E5A176bb,0x0000000000000000000000000000000000001010,0xc2132d05d31c914a87c6611c10748aeb04b58e8f', '0x0000000000000000000000000000000000001010', '0,1', 'MGL,BNB,BUSD,USDT', '0xcbAe2a4625c5CB99391D8F1a0F5121B3E5A176bb,0x0000000000000000000000000000000000001010,0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56,0x55d398326f99059fF775485246999027B3197955', '0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c'),
(6, 3, '0x07b255d138a42e0df6bb30f4daf238029e472a38', '0c6d0e3fc3a8d8386b54b78716ad4c481aba006ea38035cec354f86c10b54899', 'extra total eye edge will hill world alpha avoid mule response puppy', 'mgl,matic,USDT', '0xcbAe2a4625c5CB99391D8F1a0F5121B3E5A176bb,0x0000000000000000000000000000000000001010,0xc2132d05d31c914a87c6611c10748aeb04b58e8f', '0x0000000000000000000000000000000000001010', '0,1', 'MGL,BNB,BUSD,ETH,USDT', '0xcbAe2a4625c5CB99391D8F1a0F5121B3E5A176bb,0x0000000000000000000000000000000000001010,0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56,0x2170Ed0880ac9A755fd29B2688956BD959F933F8,0x55d398326f99059fF775485246999027B3197955', '0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c,0x2170Ed0880ac9A755fd29B2688956BD959F933F8,0x55d398326f99059fF775485246999027B3197955,0x55d398326f99059fF775485246999027B3197955'),
(7, 22, '0xb9d98264915f092e1a6133b98d7fb38efd671199', 'ae252245c4de7acf1fe5463fa93bebe466b1ad0167f714139b866c4005cf87a0', 'group attack excite mammal waste output like purpose click object sugar cigar', 'mgl,matic', '0xcbAe2a4625c5CB99391D8F1a0F5121B3E5A176bb,0x0000000000000000000000000000000000001010', '0xcbAe2a4625c5CB99391D8F1a0F5121B3E5A176bb,0x0000000000000000000000000000000000001010', '0,1', 'mgl,BNB,BUSD', '0xcbAe2a4625c5CB99391D8F1a0F5121B3E5A176bb,0x0000000000000000000000000000000000001010,0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56', '0xcbAe2a4625c5CB99391D8F1a0F5121B3E5A176bb,0x0000000000000000000000000000000000001010,0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_verify`
--
ALTER TABLE `email_verify`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `ieo`
--
ALTER TABLE `ieo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_user`
--
ALTER TABLE `manage_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p2p`
--
ALTER TABLE `p2p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_tokens`
--
ALTER TABLE `top_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_verify`
--
ALTER TABLE `email_verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ieo`
--
ALTER TABLE `ieo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_user`
--
ALTER TABLE `manage_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `p2p`
--
ALTER TABLE `p2p`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `top_tokens`
--
ALTER TABLE `top_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
