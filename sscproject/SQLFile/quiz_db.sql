SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `answers` (
  `aid` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `answers` (`aid`, `answer`, `ans_id`) VALUES
(1, 'Lord Chelmford', 1),
(2, 'Lord William', 1),
(3, 'Lord Minto', 1),
(4, 'Lord Bentinck', 1),
(5, 'Assam and Bihar', 2),
(6, 'Andhra Pradesh and Rajasthan', 2),
(7, 'Arunachal Pradesh and Uttar Pradesh', 2),
(8, 'Punjab and Chandigarh', 2),
(9, 'Uraon', 3),
(10, 'Munda', 3),
(11, 'Santhal', 3),
(12, 'Kondadora', 3),
(13, 'Rajasthan', 4),
(14, 'Aruncachal Pradesh', 4),
(15, 'Tamil nadu', 4),
(16, 'Madhya Pradesh', 4),
(17, 'Liver', 5),
(18, 'Pancreas', 5),
(19, 'Kidney', 5),
(20, 'Spleen', 5),
(21, 'Jawaharlal Nehru', 6),
(22, 'Dr. Rajendra Prasad', 6),
(23, 'Dr. B.R. Ambedkar', 6),
(24, 'Sardar Vallabhbhai Patel', 6),
(25, 'Mahatma Gandhi', 7),
(26, 'Jawaharlal Nehru', 7),
(27, 'Sardar Vallabhbhi Patel', 7),
(28, 'Subhas Chandra Bose', 7),
(29, '1885', 8),
(30, '1905', 8),
(31, '1947', 8),
(32, '1857', 8),
(33, 'Uttar Pradesh', 9),
(34, 'Rajasthan', 9),
(35, 'Bihar', 9),
(36, 'Punjab', 9),
(37, 'Yamuna', 10),
(38, 'Ganges', 10),
(39, 'Godavari', 10),
(40, 'Brahmaputra', 10);


CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `questions` (`qid`, `question`, `ans_id`) VALUES
(1, 'Rowlatt Act 1919 was enacted during the period of?', 1),
(2, 'Panchayati Raj System was implemented first in the pair of states?', 6),
(3, 'Which of the following tribes is associated with the Tana Bhagat movement?', 9),
(4, 'Where are the Todas found?', 15),
(5, 'The largest gland in the human body is', 17),
(6, 'Who was the first President of India?', 22),
(7, 'Who is known as the Iron Man of India?', 27),
(8, 'When was the Indian National Congress founded?', 29),
(9, 'Which Indian state is known as the Land of Five Rivers?', 36),
(10, 'The longest river in India is:', 38);


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Satish', 'satishmuz73@gmail.com', '737100');

ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`);


ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `answers`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;


ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;
