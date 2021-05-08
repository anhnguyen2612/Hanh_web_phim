-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 05, 2020 lúc 09:04 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbdoanwebphim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Phim thuyết minh'),
(2, 'Phim hài hước'),
(3, 'Phim chiến tranh'),
(4, 'Phim âm nhạc'),
(5, 'Phim thiếu nhi'),
(6, 'Phim hoạt hình'),
(7, 'Phim thần thoại'),
(8, 'Phim TV Show'),
(9, 'Phim hành động'),
(10, 'Phim phiêu lưu'),
(11, 'Phim viễn tưởng'),
(12, 'Phim bí mật điện ảnh'),
(13, 'Phim Võ Thuật '),
(14, 'Phim Kinh Dị'),
(15, 'Phim Hài Việt'),
(16, 'Phim Cổ Trang'),
(17, 'Phim Tâm Lý'),
(18, 'Phim Hình Sự'),
(19, 'Phim Khoa học Tài liệu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `episode` int(10) NOT NULL,
  `episode_name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `content` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `episode`
--

INSERT INTO `episode` (`id`, `film_id`, `episode`, `episode_name`, `content`) VALUES
(1, 23, 1, 'Full', 'images/video/dkh.mp4'),
(2, 22, 1, 'Full', 'images/video/think.mp4'),
(3, 21, 2, 'Full', 'images/video/thehunt.mp4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `film`
--

CREATE TABLE `film` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name2` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  `actor` varchar(100) NOT NULL,
  `category_id` int(2) NOT NULL,
  `type_movie` int(20) NOT NULL,
  `nation_id` int(100) NOT NULL,
  `year` int(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `duration` int(5) NOT NULL,
  `num_view` int(11) NOT NULL,
  `author` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `film`
--

INSERT INTO `film` (`id`, `name`, `name2`, `status`, `director`, `actor`, `category_id`, `type_movie`, `nation_id`, `year`, `image`, `description`, `duration`, `num_view`, `author`) VALUES
(1, 'HÀNG LONG ĐẠI SƯ', 'Dragon Hunter', 'Hoàn tất', 'Hạng Thu', 'Charlie Hunnam, Hà văn Huy, Châu Tử Long', 1, 1, 7, 2017, 'images/f1.png', 'Hàng Long Đại Sư yêu quái đột ngột kéo đến đe dọa chúng sinh, hòa thượng Lý Tu Duyên được giao trọng trách đi tìm Lạc Sắc đại sư để giúp đỡ. Trên đường đi anh gặp hồ ly Tiểu Cứu và từ đó anh biết thân phận thật của mình là Hàng Long La Hán chuyển thế. Liệu Lý Tu Duyên có tìm được Lạc Sắc đại sư hàng phục rồng yêu và đánh bại ác ma Hắc La Sát?', 85, 10, 'Hạng Thu Lương'),
(2, 'HỒI ĐÁP', 'The Answer', 'HOÀN TẤT', 'Iqbal Ahmed', 'Austin Hébert, David S. Lee, Adam Shapiro', 9, 1, 1, 2017, 'images/f2.png', 'Khi anh chàng nghề đưa thư Bridd đưa cố bạn gái mới hẹn hò Charlotte về nhà. Họ phát hiện ông chủ của mình trên sàn nhà với dụng cụ mở thư bị găm trước lồng ngực. Những kẻ tấn công cũng theo dõi Bridd sau đó và anh ta phải sử dụng tất cả tài năng của mình để chống lại những phần tử là người ngoài hành tinh, bị đột biến gen và có siêu năng lực. Sau cuộc tấn công đó, một thanh niên sống nội tâm Bridd phải lần theo những manh mối do cha mẹ đã chết để lại để tìm ra kẻ đứng sau anh ta - và anh ta thực sự là ai?', 83, 5, 'Iqbal Ahmed'),
(3, 'CLOAK VÀ DAGGER', 'Marvel\'s Cloak & Dagger', 'Hoàn tất (10/10)', 'Joe Pokaski', '\r\nOlivia Holt, Aubrey Joseph', 9, 2, 1, 2018, 'images/f3.png', '“Marvel’s Cloak & Dagger” phần 2 tiếp tục câu chuyện về cô gái trẻ Tandy Bowen (Olivia Holt) và anh chàng Tyrone Johnson (Aubrey Joseph) – hai thanh thiếu niên vốn có hoàn cảnh sống rất khác nhau, đã vô tình đánh thức một sức mạnh vô hình được kết nối bí ẩn với nhau.\r\n\r\nTandy có thể tạo ra những lưỡi dao ánh sáng, những lưỡi dao này có thể rút một phần sự sống của đối thủ và có thể rút cạn để giết chết đối phương nếu cô muốn. Còn Tyrone thì có khả năng tạo ra và điều khiển bóng tối để tấn công khiến người khác bị chìm trong bóng tối đó. Điều này sẽ khiến đối thủ cảm thấy tê cóng và đôi khi nhìn thấy những ảo giác khó chịu, đồng thời họ sẽ bị rút dần nguồn sống cho đến chết nếu Tyrone không thả họ ra.', 44, 20, 'Joe Pokaski'),
(4, 'TÔI LÀ THẦY GIÁO\r\n', 'I Am Your Teacher / I am Sam ', 'Hoàn tất (16/16)', 'Kim Jung-Kyu', '\r\nYang Dong, \r\nPark Min-Young', 1, 2, 5, 2017, 'images/f4.png', 'Một vị thầy giáo bình thường, không giỏi giang gì bỗng một ngày nhận được một khoản tiền kếch xù với điều kiện phải làm giáo viên kèm thêm cho cô con gái Yoo Eun Byul duy nhất của một đại ca xã hội đen, và vấn đề là nếu cô con gái này học hành có vấn đề gì thìn vị thầy giáo cũng coi như là mất mạng.', 60, 25, 'Kim Jung-Kyu'),
(5, 'MỸ NHÂN NGƯ\r\nThe Mermaid (2016)\r\n', 'The Mermaid', 'Hoàn tất', 'Châu Tinh Trì', '\r\nĐặng Siêu, Liu Xuan, Show Lo, Octopus, Yuqi Zhang', 11, 1, 7, 2016, 'images/f5.png', 'MỸ NHÂN NGƯ của Châu Tinh Trì lấy bối cảnh ở thời hiện đại. Phim xoay quanh chuyện tình cảm giữa cô người cá San San và doanh nhân trẻ thành đạt Lưu Hiên. Phim không chỉ hài hước còn mang nhiều giá trị nhân văn về tình yêu, cuộc sống và việc bảo vệ môi trường.', 94, 20, 'Châu Tinh Trì'),
(6, 'MẬT MÃ VỆ BINH\r\n', 'ReBoot: The Guardian Code', 'Trạng thái:Hoàn tất (10/10)', 'Michael Hefferon, Sean Jara,', '\r\nTy Wood, Vector, Ajay Friese, Parker', 11, 2, 1, 2015, 'images/f6.png', 'ReBoot: The Guardian Code 2018: Kể về cuộc phiêu lưu của 4 thanh thiếu niên là Austin, Tamra, Parker và Trey. Cuộc đời họ đã được bước sang trang mới khi phát hiện ra mình là thế hệ Người Bảo Hộ tiếp theo - những người hùng xông pha vào Cyberspace (không gian mạng ảo) để giúp nhân loại khỏi siêu máy tính và vi rút.', 30, 100, 'Michael Hefferon, Sean Jara,'),
(7, 'NGUYỆT THƯỢNG TRỌNG HỎA', 'And The Winner Is Love', 'Tập 18/48', 'Hà Chú Bồi', '\r\nLa Vân Hi, Thượng Quan Thấu, Trần Ngọc Kỳ, Trọng Tuyết Chi', 16, 2, 7, 2015, 'images/f7.png', 'Bộ phim xoay quanh mối tình sóng gió giữa Thượng Quan Thấu, chủ nhân của Nguyệt Thượng cốc, một người nho nhã, lễ độ, cách làm việc lại không phân biệt chính tà và Trọng Tuyết Chi, thiếu cung chủ của Trọng Hỏa cung, xinh đẹp tuyệt trần, phong tình vạn chủng.', 45, 300, 'Châu Tinh Trì'),
(8, 'VÕ TÒNG ĐẢ HỔ\r\nTiger Hunter\r\nTrạng thái:Hoàn tất', 'Tiger Hunter', 'Hoàn tất', '', '', 16, 1, 7, 2016, 'images/f8.png', '', 90, 11, ''),
(9, 'VÕ SĨ SAY ĐÒN\r\n', 'My punch-drunk boxer', 'Hoàn tất', 'Jung Hyuk-Gi', '\r\nUm Tae-Goo, Byeong-gu, Kim Hee-Won', 13, 1, 5, 2018, 'images/f9.png', '“Võ Sĩ Say Đòn” là bộ phim xoay quanh Byeong-goo, từng là võ sĩ quyền anh chuyên nghiệp đầy triển vọng nhưng phải giải nghệ vì một sai lầm trong quá khứ. Kiếm sống nhờ công việc chạy vặt tại một phòng tập quyền anh do ông chủ họ Park điều hành, Byeong-gu mong muốn quay trở lại sàn đấu, nhưng chẳng may anh lại bị chẩn đoán mắc hội chứng say đòn. Một ngày nọ, cô gái trẻ Min-ji đến phòng tập quyền anh, nhìn thấy ở Byeong-gu sự đam mê và khao khát trở lại sàn đấu nên đã không ngừng khuyến khích và ủng hộ anh. Với sự hỗ trợ của Min-ji, Byeong-gu quyết định dấn thân vào thử thách nguy hiểm nhất cuộc đời, sáng tạo ra một phong cách quyền anh mới của riêng mình, đó chính là lối chơi quyền anh kiểu Pansori.', 95, 600, 'Kim Jung-Kyu'),
(10, 'NGƯỜI LẠ TỚI TỪ ĐỊA NGỤC\r\n\r\n', 'Strangers From Hell', 'Hoàn tất (10/10)', 'Lee Chang-Hee,', '\r\nIm Si-Wan, Yoon Jong-Woo', 13, 2, 5, 2017, 'images/f10.png', 'Yoon Jong-Woo là một người đàn ông ở độ tuổi 20. Suốt cả cuộc đời, anh sống trong một thị trấn nhỏ nhưng lại tìm được một công việc ở một văn phòng ở Seoul. Yoon Jong-Woo chuyển đến Seoul và ở tại một căn hộ giá rẻ ', 30, 55, 'Kim Jung-Kyu'),
(11, 'NHỮNG NGƯỜI CON XA XỨ: CÔ DÂU VIỆT TRÊN XỨ HÀN', 'NHỮNG NGƯỜI CON XA XỨ', 'Hoàn tất (31/31)', '', '', 17, 2, 2, 2016, 'images/f12.png', 'Bộ phim phản ánh cuộc sống của hai đối tượng người Việt chiếm đại đa số tại Hàn Quốc: cô dâu và người lao động. Ðây được xem là loạt phóng sự truyền hình đầu tiên ghi nhận một cách chi tiết về người Việt Nam ở Hàn Quốc.', 30, 100, ''),
(13, 'BƯỚC CHÂN AN LẠC\r\n', 'Walk with Me', 'Hoàn tất', 'Max Pugh, Marc J. Francis,', '\r\nBenedict Cumberbatch, Thich Nhát Hanh, Chan Khong\r\n', 17, 1, 2, 2018, 'images/f18.png', 'Với những thước phim đẹp, tĩnh lặng, sử dụng âm thanh tự nhiên, cùng lời dẫn chuyện trích từ tác phẩm “Nẻo về của ý” của Thiền sư Thích Nhất Hạnh qua giọng đọc của diễn viên nổi tiếng Benedict Cumberbatch, bộ phim tài liệu Bước Chân An Lạc đem đến cho người xem một trải nghiệm rất đặc biệt, đầy thiền vị. Khán giả sẽ có cơ hội bước vào xứ sở của phút giây hiện tại và hiểu thêm về nếp sống của người xuất gia, đặc biệt là những người xuất gia trẻ đến từ nhiều quốc gia khác nhau trong tăng thân Làng Mai.', 85, 30, 'Max Pugh, Marc J. Francis,'),
(14, 'VƯƠNG TRIỀU CUỐI CÙNG (PHẦN 4)\r\n\r\n', 'The Last Kingdom', 'Hoàn tất (10/10)', '', '\r\nAlexander Dreymon, Uhtred, Ian Hart, Beocca', 3, 2, 6, 2015, 'images/f14.png', 'Khi một vị vua trẻ trỗi dậy, một vị vua khác gục ngã. Trong khi đó, Uhtred cuối cùng cũng tìm về quê cha đất tổ đã bị cướp khỏi anh từ lâu.', 60, 40, ''),
(15, 'THẾ GIỚI KHÁC \r\n', 'The Man in the High Castle', 'Hoàn tất (10/10)', 'Frank Spotnitz,', '\r\nAlexa Davalos, Juliana Crain, Joel De La Fuente, Inspector Kido', 3, 1, 6, 2015, 'images/f15.png', 'The Man in the High Castle dựa trên tiểu thuyết cùng tên của tác giả Philip K. Dick. Bối cảnh bộ phim là một thế giới khác khi Phát xít Đức chiến thắng chiến tranh thế giới thứ 2.', 85, 30, 'Frank Spotnitz,'),
(16, 'CUỘC CHIẾN CỦA SAKURA\r\n', 'Sakura Taisen: The Animation', 'Tập 9/12', '', '\r\nSaori Hayami, Clarissa Snowflake', 6, 2, 4, 2016, 'images/f16.png', 'Vào năm 1930, hai năm sau các sự kiện của So Long, My Love, Great Demon War dẫn đến sự hủy diệt của các Sư đoàn Hoa của Paris, Paris và New York. Khi Trái đất hòa bình và các hành động của các cuộc điều tra trở nên công khai, Tổ chức Tái hiện Chiến đấu Thế giới được thành lập với nhiều bộ phận quốc tế; một giải đấu Combat Revue quốc tế hai năm một lần đã được tổ chức.', 30, 60, ''),
(17, 'CUỘC PHIÊU LƯU CỦA SCOOBY-DOO\r\n', 'Scoob!', 'Hoàn Tất', 'Tony Cervone', '\r\nWill Forte, Shaggy Rogers', 6, 1, 1, 2018, 'images/f17.png', 'Scooby-Doo và the Mystery Inc. hợp sức giải cứu thế giới khỏi tên ác nhân Dick Dastardly.', 120, 100, ''),
(18, 'HUYỀN THOẠI NGÔI SAO NHẠC ROCK\r\nBohemian Rhapsody (2018)', 'Bohemian Rhapsody', 'Hoàn tất', 'Bryan Singer', '\r\nRami Malek, Freddie Mercury', 8, 3, 6, 2018, 'images/f18.png', 'Tuổi thơ của một lượng lớn các 8x đều đã từng nghe qua \"We Will Rock You\", \"We Are The Champions\" và biết đến ban nhạc huyền thoại Queen. Tháng 11 này, hãng FOX hân hạnh được mang đến cho người hâm mộ âm nhạc nói riêng và khán giả điện ảnh nói chung những điều thú vị nhất về ban nhạc huyền thoại này trên màn ảnh rộng.', 90, 50, 'Bryan Singer'),
(19, 'VÒNG LUÂN HỒI\r\n', 'Sadako', 'Hoàn tất', 'Hideo Nakata', '\r\nElaiza Ikeda, Mayu Akikawa', 14, 3, 4, 2017, 'images/f19.png', 'Mayu là một cố vấn tâm lý tại bệnh viện điều trị cho cô bé được cho là hiện thân của Sadako. Hàng loạt những người tiếp xúc với cô bé đều mất tích một cách bí ẩn trong đó có em trai của Mayu, chàng trai đã vô tình giải thoát cho Sadako khỏi nơi phong ấn. Sau hàng loạt manh mối tìm được, Mayu đã tim đến hang động bên dưới giếng nước cội nguồn của oán nghiệp của Sadako. Liệu cô có giải cứu được em trai và giải được oán nghiệp cho Sadako?', 90, 50, 'Hideo Nakata'),
(20, 'NHỮNG GÃ TRAI HƯ TRỌN ĐỜI\r\n', 'Bad Boys for Life', 'Hoàn tất', 'Adil El Arbi, Bilall Fallah', '\r\nWill Smith, Mike', 18, 3, 1, 2016, 'images/f20.png', 'Sau khi dừng lại ở phần 2 cách đây 16 năm, loạt phim hài hành động nổi đính đám Bad Boys đã chính thức trở lại với khán giả trên toàn thế giới. Vẫn giữ nguyên “cặp đôi huyền thoại” Will Smith và Martin Lawrence, tuy nhiên, Bad Boys For Life sẽ đưa khán giả vào một hành trình mới toanh mà chính chúng ta cũng không ngờ tới.', 90, 100, ''),
(21, 'CUỘC SĂN LÙNG\r\nThe Hunt ', 'The Hunt ', 'Hoàn tất', 'Craig Zobel', '\r\nBetty Gilpin, Crystal', 10, 3, 3, 2015, 'images/f21.png', 'Những xung đột căng thẳng và đậm tính bạo lực giữa phe cánh hữu và phe cánh tả trong môi trường chính trị', 110, 50, 'Craig Zobel'),
(22, 'THIBAAN × BNK48', 'Thibaan × BNK48', 'Hoàn tất', 'Surasak Pongsorn', '\r\nNatruja, Chutiw', 4, 1, 10, 2017, 'images/f22.png', 'Để tạo ra bài hát mới, một nhóm nhạc nữ thần tượng phải đến sống ở nông thôn, hy vọng việc đắm chìm trong cuộc sống nơi này sẽ truyền cảm hứng cho một âm thanh tươi mới.', 80, 60, 'Surasak Pongsorn'),
(23, 'ĐẢO KINH HOÀNG\r\n', 'Fantasy Island', 'Hoàn tất', 'Jeff Wadlow', '\r\nMichael Peña, Mr. Roarke', 12, 3, 1, 2018, 'images/f23.png', 'Là phiên bản remake của “Fantasy Island” (Đảo kinh hoàng) – series phim kinh dị nổi tiếng của những năm 1970-1980, đây sẽ là câu chuyện về quý ngài Roarke và trợ lý Tatto, chào mừng các vị khách đến hòn đảo biệt lập của mình, và hứa hẹn 1 cuộc sống trong mơ. Câu chuyện về quý ngài Roarke và trợ lý Tatto, chào mừng các vị khách đến hòn đảo biệt lập của mình, và hứa hẹn 1 cuộc sống trong mơ.', 120, 6598, 'Jeff Wadlow'),
(24, 'ĐẠN LẠC\r\n', 'Lost Bullet (2020)', 'Hoàn tất', 'Guillaume Pierret', '\r\nAlban Lenoir, Lino', 9, 1, 3, 2018, 'images/f24.png', '', 120, 120, 'Guillaume Pierret'),
(25, 'HỒI KẾT CỦA SÁT THỦ\r\n', 'Sniper: Assassin\'s End', 'Hoàn tất', 'Kaare Andrews,', '\r\nTom Berenger, Thomas Beckett', 9, 1, 1, 2018, 'images/f25.png', 'asd', 110, 110, ' Tom Berenger '),
(26, 'CUỘC CHIẾN KONDHANA\r\n', 'Tanhaji: The Unsung Warrior', 'Hoàn tất', 'Om Raut', '\r\nAjay Devgn, Tanhaji Malusare', 9, 1, 8, 2017, 'images/f26.png', 'asd', 105, 105, 'Không xác định'),
(27, 'KẺ ĐÀO TẨU GIẤC MƠ', 'The Coma', 'Hoàn tất', 'Nikita Argunov', '\r\nAnton Pampushnyy, Phantom', 9, 1, 1, 2018, 'images/f27.png', 'asd', 120, 120, 'Hideo Nakata');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nation`
--

CREATE TABLE `nation` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nation`
--

INSERT INTO `nation` (`id`, `name`) VALUES
(1, 'Mỹ'),
(2, 'Việt Nam'),
(3, 'Pháp'),
(4, 'Nhật Bản'),
(5, 'Hàn Quốc'),
(6, 'Anh'),
(7, 'Trung Quốc'),
(8, 'Ấn Độ'),
(9, 'Hồng Kông '),
(10, 'Thái Lan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nav-menu`
--

CREATE TABLE `nav-menu` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `handle` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nav-menu`
--

INSERT INTO `nav-menu` (`id`, `name`, `handle`) VALUES
(1, 'thể loại', 'category'),
(2, 'quốc gia', 'nation'),
(3, 'phim lẻ', 'single-movie'),
(4, 'phim bộ', 'series-movie'),
(5, 'phim chiếu rạp', 'theater-movie');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `series-movie`
--

CREATE TABLE `series-movie` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `year` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `series-movie`
--

INSERT INTO `series-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Bộ 2018', 2018),
(2, 'Phim Bộ 2017', 2017),
(3, 'Phim Bộ 2016', 2016),
(4, 'Phim Bộ 2015', 2015);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `single-movie`
--

CREATE TABLE `single-movie` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `year` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `single-movie`
--

INSERT INTO `single-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Lẻ 2018', 2018),
(2, 'Phim Lẻ 2017', 2017),
(3, 'Phim Lẻ 2016', 2016),
(4, 'Phim Lẻ 2015', 2015);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theater-movie`
--

CREATE TABLE `theater-movie` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf32 NOT NULL,
  `year` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `theater-movie`
--

INSERT INTO `theater-movie` (`id`, `name`, `year`) VALUES
(1, 'Phim Chiếu Rạp 2018', 2018),
(2, 'Phim Chiếu Rạp 2017', 2017),
(3, 'Phim Chiếu Rạp 2016', 2016),
(4, 'Phim Chiếu Rạp 2015', 2015);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type-movie`
--

CREATE TABLE `type-movie` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `type-movie`
--

INSERT INTO `type-movie` (`id`, `name`, `handle`) VALUES
(1, 'Phim lẻ', 'single-movie'),
(2, 'Phim bộ', 'series-movie'),
(3, 'Phim chiếu rạp', 'theater-movie');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `ID` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `usertype` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`ID`, `username`, `fullname`, `password`, `email`, `birthday`, `sex`, `usertype`) VALUES
(8, 'quang2011', '', '$2y$10$jClnkYFU90KOnRw4toGuR.i', 'vnhquang2011@gmail.com', '1997-11-20', 'male', 20),
(9, 'giangoc', 'GiaNgoc', '$2y$10$ktGE0Hi2cfKS0DgcdeUz7eobCG9MNDoSDqdC6FSws8XQwLAxdopOm', 'userroot1603@gmail.com', '1999-11-07', 'male', 99),
(10, 'giangoc1', 'KieuOanh', '$2y$10$wZAaRWOfx9orV806oz2h2ukGeTYrTbu6lg7LEQexE.Za9jmaQj9UK', 'userroot1603@gmail.com', '1999-06-23', 'female', 20),
(11, 'admin1', 'Admin', '$2y$10$l266iQ8AX9bgjkyN5Xtr0uDIG7gP6U86gof4rUSDpvb4vpie7XMBu', 'Adminwebphim@gmail.com', '1995-11-07', 'male', 99),
(12, 'user1', 'user', '$2y$10$5r6nGKr5Y3lrrqrv7xqLXum.4y55orxkolqBmaLpONygS15h8e6ha', 'userroot1603@gmail.com', '1995-11-07', 'male', 20),
(13, 'ngoc', 'Ngoc', '$2y$10$hCAOgXaC.6/Mt9LGiuvE6OCiX2dGqXEID5B8LqSlXV0bOT5mMn45.', 'userroot1603@gmail.com', '1995-11-07', 'male', 20),
(14, 'ad', 'admin', '$2y$10$yG6LJr3.YhIqz9FSDITLXecDZJVn.udSU1jMUPW4J4uTCWoO0fy7q', 'userroot1603@gmail.com', '1995-01-07', 'male', 99);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usertype`
--

CREATE TABLE `usertype` (
  `type` int(2) NOT NULL,
  `typename` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `usertype`
--

INSERT INTO `usertype` (`type`, `typename`) VALUES
(10, 'Guest'),
(20, 'Member'),
(99, 'Admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`,`film_id`),
  ADD KEY `film_id` (`film_id`);

--
-- Chỉ mục cho bảng `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nation_id` (`nation_id`),
  ADD KEY `category` (`category_id`);

--
-- Chỉ mục cho bảng `nation`
--
ALTER TABLE `nation`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nav-menu`
--
ALTER TABLE `nav-menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `series-movie`
--
ALTER TABLE `series-movie`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `single-movie`
--
ALTER TABLE `single-movie`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theater-movie`
--
ALTER TABLE `theater-movie`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type-movie`
--
ALTER TABLE `type-movie`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_ibfk_1` (`usertype`);

--
-- Chỉ mục cho bảng `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`type`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `film`
--
ALTER TABLE `film`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `nation`
--
ALTER TABLE `nation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `nav-menu`
--
ALTER TABLE `nav-menu`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `series-movie`
--
ALTER TABLE `series-movie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `single-movie`
--
ALTER TABLE `single-movie`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `theater-movie`
--
ALTER TABLE `theater-movie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `type-movie`
--
ALTER TABLE `type-movie`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `episode_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`);

--
-- Các ràng buộc cho bảng `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`nation_id`) REFERENCES `nation` (`id`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
