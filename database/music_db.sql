-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 02:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(30) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `cover_photo` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`, `description`, `cover_photo`, `date_created`) VALUES
(1, 'Hollywood!', '', 'default_cover.jpg', '2020-11-19 08:26:53'),
(2, 'Bollywood!', '', 'default_cover.jpg', '2020-11-19 08:29:13'),
(3, 'Sandalwood!', '', 'default_cover.jpg', '2022-12-18 15:40:46'),
(4, 'Remix!', '', 'default_cover.jpg', '2020-11-19 08:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `user_id`, `title`, `description`, `cover_image`, `date_created`) VALUES
(1, 2, 'My Playlist', '', '1605833940_h1.jpg', '2020-11-20 08:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_items`
--

CREATE TABLE `playlist_items` (
  `id` int(30) NOT NULL,
  `playlist_id` int(30) NOT NULL,
  `music_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist_items`
--

INSERT INTO `playlist_items` (`id`, `playlist_id`, `music_id`, `date_created`) VALUES
(1, 6, 1, '2020-11-20 08:52:51'),
(2, 2, 2, '2020-11-20 08:58:44'),
(3, 3, 2, '2020-11-20 08:59:46'),
(4, 3, 1, '2020-11-20 08:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `genre_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `artist` text NOT NULL,
  `description` text NOT NULL,
  `upath` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `genre_id`, `title`, `artist`, `description`, `upath`, `cover_image`, `date_created`) VALUES
(3, 3, 2, 'Bewafa', 'Imran khan', '', '1671385980_Imran_Khan_Bewafa.mp3', '1671385980_bewafa.jpg', 2147483647),
(4, 3, 1, 'Arcade', 'Duncan Laurence', '', '1671356700_Arcade.mp3', '1671356460_Arcade.jpg', 2147483647),
(5, 3, 1, 'Astrount in the ocean', 'Masked wolf', '', '1671356760_Astronaut In The Ocean.mp3', '1671356760_Astrount in the ocean.jpg', 2147483647),
(6, 3, 1, 'At my worst', 'Pink sweat', '', '1671356820_At My Worst.mp3', '1671356820_at my worst.jpg', 2147483647),
(7, 3, 1, 'Beggin', 'Maneskin', '', '1671356940_Beggin.mp3', '1671356940_beggin.jpg', 2147483647),
(8, 3, 1, 'Blackbear idfc', 'Blackbear ', '', '1671357000_Blackbear idfc.mp3', '1671357000_idfc.jpg', 2147483647),
(9, 3, 1, 'Closer', 'The chainsmokers, Halsey', '', '1671357060_closer.mp3', '1671357060_closer.jpg', 2147483647),
(10, 3, 1, 'Dance Monkey', ' Tones and I', '', '1671357420_Dance Monkey.mp3', '1671357420_dance monkey.jpg', 2147483647),
(11, 3, 1, 'Darkside', 'Neoni', '', '1671357540_darkside.mp3', '1671357540_darkside.jpg', 2147483647),
(12, 3, 1, 'Dusk till down', 'ZAYN, Sia', '', '1671357720_Dusk till down.mp3', '1671357720_dusk till down.jpg', 2147483647),
(13, 3, 1, 'Everything at once', 'Lenka', '', '1671357780_Everything at Once.mp3', '1671357780_everything at once.jpg', 2147483647),
(14, 3, 1, 'Faded', 'Alan walker', '', '1671357840_Faded.mp3', '1671357840_Faded.jpg', 2147483647),
(15, 3, 1, 'Falling ', 'Trevor Daniel', '', '1671357900_Falling.mp3', '1671357900_falling .jpg', 2147483647),
(16, 3, 1, 'Friends', 'Marshmello, Anne-Marie', '', '1671358020_FRIENDS.mp3', '1671358020_friends.jpg', 2147483647),
(17, 3, 1, 'Gangsta', 'Kehlani', '', '1671358080_Gangsta.mp3', '1671358080_gangsta.jpg', 2147483647),
(18, 3, 1, 'Goosebumps', 'Travis Scott', '', '1671358440_Goosebumps.mp3', '1671358440_goosebumps.jpg', 2147483647),
(19, 3, 1, 'Happier', 'Marshmello, Bastille', '', '1671358560_Happier.mp3', '1671358560_happier.jpg', 2147483647),
(20, 3, 1, 'Heat Waves', 'Glass Animals', '', '1671358680_Heat Waves.mp3', '1671358680_Hwat waves.jpg', 2147483647),
(21, 3, 1, 'Hymn for the weekend', 'Coldplay', '', '1671358740_Hymn for the Weekend.mp3', '1671358740_hymn for the weekend.jpg', 2147483647),
(22, 3, 1, 'i like me better ', 'Lauv', '', '1671358800_I Like Me Better.mp3', '1671358800_i like me better .jpg', 2147483647),
(23, 3, 1, 'Ignite', 'Alan walker, Julie Bergan', '', '1671358860_Ignite.mp3', '1671358860_ignite.jpg', 2147483647),
(24, 3, 1, 'Lean on ', 'Major Lazer, DJ Snake', '', '1671358920_lean on.mp3', '1671358920_lean on.jpg', 2147483647),
(25, 3, 0, 'Let me down slowly', 'Alec Benjamin', '', '1671359100_Let Me Down Slowly.mp3', '1671359100_let me down slowly.jpg', 2147483647),
(26, 3, 1, 'Levitating', 'Dua lips', '', '1671359160_Levitating.mp3', '1671359160_levitating.jpg', 2147483647),
(27, 3, 1, 'Let me down slowly', 'Alec Benjamin', '', '1671359280_Let Me Down Slowly.mp3', '1671359280_let me down slowly.jpg', 2147483647),
(28, 3, 1, 'Love me like you do', 'Ellie Goulding', '', '1671359400_Love Me Like You Do.mp3', '1671359400_love me like you do.jpg', 2147483647),
(29, 3, 1, 'Lovely', 'Billie Eilish, Khalid', '', '1671359520_lovely.mp3', '1671359520_lovely.jpg', 2147483647),
(30, 3, 1, 'Middle of the night', 'Elley Duhe', '', '1671359520_Middle of the night.mp3', '1671359520_middle of the night.jpg', 2147483647),
(31, 3, 1, 'Movements', 'Pham, Yung Fusion', '', '1671359580_Movements.mp3', '1671359580_movements.jpg', 2147483647),
(32, 3, 1, 'Silence', 'Marshmello, Khalid', '', '1671359880_Silence.mp3', '1671359880_Silence.jpg', 2147483647),
(33, 3, 1, 'SNAP', 'Rosa Linn', '', '1671359940_SNAP.mp3', '1671359940_snap.jpg', 2147483647),
(34, 3, 1, 'In The End', 'Tomme Profitt, Fleurie', '', '1671360120_In the end.mp3', '1671360120_in the end.jpg', 2147483647),
(35, 3, 2, 'Agar tum saath ho', 'Arijit singh, Alka yagnik', '', '1671381360_Agar_Tum_Saath_Ho.mp3', '1671381360_agar tum saath ho.jpg', 2147483647),
(36, 3, 2, 'Baatein Ye Kabhi Na', 'Arijit singh', '', '1671381540_Baatein_Ye_Kabhi_Na.mp3', '1671381540_battien ye kabhi.jpg', 2147483647),
(37, 3, 2, 'Bekhayali', 'Sachet Tandon', '', '1671381600_Bekhayali.mp3', '1671381600_bekhayali.jpg', 2147483647),
(38, 3, 2, ' Bol Do Na Zarra', 'Armaan malik', '', '1671381720_BOL_DO_NA_ZARA.mp3', '1671381720_bol do na zarra.jpg', 2147483647),
(39, 3, 2, 'Fitoor', 'Arijit Singh Neeti Mohan', '', '1671381780_Fitoor.mp3', '1671381780_fitoor.jpg', 2147483647),
(40, 3, 2, 'Humraah', 'Sachet Tandon', '', '1671381840_Humraah.mp3', '1671381840_humraah.jpg', 2147483647),
(41, 3, 2, 'Jaane Kyun Main', 'Arijit singh', '', '1671381960_Jaane Kyun Mai.mp3', '1671381960_jaane kyun main.jpg', 2147483647),
(42, 3, 2, 'Lo Safar', 'Jubin Nautiyal', '', '1671382020_Lo Safar.mp3', '1671382020_loo safar.jpg', 2147483647),
(43, 3, 2, 'Maan Meri Jaan', 'King', '', '1671382080_Maan Meri Jaan.mp3', '1671382080_maan meri jaan.jpg', 2147483647),
(44, 3, 2, 'Main Rang Sharbaton Ka', 'Atif Aslam and Chinmayi', '', '1671382200_Main_Rang_Sharbaton_Ka.mp3', '1671382200_main rang sharabaton ka.jpg', 2147483647),
(45, 3, 2, 'Makhna', 'Asees Kaur and Tanishk Bagchi', '', '1671382320_Makhna.mp3', '1671382320_makhna.jpg', 2147483647),
(46, 3, 2, 'Mann Mera', 'Gajendra Verma', '', '1671382380_Mann Mera.mp3', '1671382380_Mann-Mera.jpg', 2147483647),
(47, 3, 2, 'Shayad', 'Arijit Singh and Madhubanti Bagchi', '', '1671382500_Shayad Love.mp3', '1671382500_shayad.jpg', 2147483647),
(48, 3, 2, 'Soch Na Sake', 'Arijit singh', '', '1671382560_Soch_Na_Sake.mp3', '1671382560_soch na sake.jpg', 2147483647),
(49, 3, 3, 'Singara Siriye', 'Vijay prakash', '', '1671383220_Singara_Siriye.mp3', '1671383220_singara siriye.jpg', 2147483647),
(50, 3, 3, 'Belakina Kavithe', 'B.ajaneesh loknath', '', '1671383460_Belakina_Kavithe.mp3', '1671383460_belakin kavithe.jpg', 2147483647),
(51, 3, 3, 'Jagave Neenu', 'Sid  Sriram', '', '1671384240_Jagave_Neenu.mp3', '1671384240_jagave nennu.jpg', 2147483647),
(52, 3, 3, 'Usire Usire', 'Sonu Nigam', '', '1671384360_Usire_Usire.mp3', '1671384360_usire usire.jpg', 2147483647),
(53, 3, 3, 'Neenaade Naa', 'Santosh ', '', '1671384480_Neenaade_Naa.mp3', '1671384480_neenade naa.jpg', 2147483647),
(54, 3, 4, 'Remix..', 'Anonymous', '', '1671385800_Bhojpuri_Vs_Hindi_Nonstop___Bollywood_Bhojpuri_Pan.mp3', '1671385800_remix1.jpg', 2147483647),
(56, 1, 1, 'Peaky Blinder', 'Tommy shelby', '', '1671423540_Peaky Blinder.mp3', '1671423540_peaky blinder.jpg', 2147483647),
(57, 1, 1, 'perfect', 'Joel Adams', '', '1671437520_Perfect.mp3', '1671437520_Perfect.jpg', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT 2,
  `profile_pic` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `profile_pic`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '', '2020-11-18 16:50:06'),
(9, 'yashpal Anna', 'delhi', 'yash@gmail.com', '900150983cd24fb0d6963f7d28e17f72', 2, '', '2022-12-18 23:25:41'),
(10, 'ADITYA', 'SHETTY', 'namitha@gmail.com', '4d6c57324bebe9e244be3e1faf150a97', 2, '', '2022-12-19 00:52:43'),
(11, 'priyanshu', 'kv', 'pkv@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '', '2022-12-19 13:11:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_items`
--
ALTER TABLE `playlist_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `playlist_items`
--
ALTER TABLE `playlist_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
