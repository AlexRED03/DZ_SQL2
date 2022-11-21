INSERT INTO genre values
(1,'rokc'),
(2,'jazz'),
(3,'country'),
(4,'blues'),
(5,'Hip hop');

INSERT into executor values 
(1,'Qeen'),
(2,'Red Hot Chili Peppers'),
(3,'Miles Davis'),
(4,'John Coltrane'),
(5,'Johnny Cash'),
(6,'Taylor Swift'),
(7,'Tom Waits'),
(8,'Eric Clapton'),
(9,'Eminem'),
(10,'Kanye West');

INSERT into genre_executor values 
('1', '1'),
('1', '2'),
('2', '3'),
('2', '4'),
('3', '5'),
('3', '6'),
('4', '7'),
('4', '8'),
('5', '9'),
('5', '10');

INSERT into album values 
(1, 'qeen', 1973),
(2 ,'Stadium Arcadium', 2006),
(3, 'Kind of Blue', 1959),
(4, 'The Very Best Of John Coltrane', 2000),
(5, 'The Essential Johnny Cash', 2001),
(6, 'Taylor Swift', 2006),
(7, 'Rain Dogs', 1985),
(8, 'The Cream of Clapton', 1994),
(9, 'The Marshall Mathers LP', 2000),
(10, 'The Life of Pablo', 2016);

INSERT into album values 
(11, 'album1', 2008),
(12 ,'album2', 2010);

INSERT into album_executor values 
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('6', '6'),
('7', '7'),
('8', '8'),
('9', '9'),
('10', '10');

INSERT into album_executor values 
('1', '11'),
('2', '12');

INSERT into track  values
(1, 'Keep Yourself Alive', 3.31 , 1),
(2 ,'My Fairy King', 4.08 , 1 ),
(3 ,'Dani California',4.42 , 2 ),
(4 ,'Snow (Hey Oh)',5.34 , 2),
(5 ,'So What - Mono Version', 9.07 , 3),
(6 ,'Freddie Freeloader - Mono Version', 9.48 , 3),
(7 ,'Giant Steps', 4.46 , 4),
(8 ,'Cousin Mary', 5.45, 4),
(9 ,'All over Again',2.05 , 5),
(10 ,'The Rebel - Johnny Yuma', 1.53, 5),
(11 ,'The Outside',3.48, 6),
(12 ,'Our Song', 3.19, 6),
(13 ,'Singapore', 2.43, 7),
(14 ,'Clap Hands',3.45 , 7),
(15 ,'Badge',2.45, 8),
(16 ,'I Feel Free',2.53 , 8),
(17 ,'Stan',5.32 , 9),
(18 ,'The Way I Am',4.40 , 9),
(19,'Ultralight Beam',5.20 , 10),
(20 ,'Famous', 3.14 , 10);

INSERT into track  VALUES
(21, 'track1', 3.14, 11),
(22, 'track2', 3.20, 12),
(23, 'track3', 4.20, 12),
(24, 'track4', 3.20, 12);



INSERT into collection  values
(1,'collection_1',2019),
(2,'collection_2',2018),
(3,'collection_3',2019),
(4,'collection_4',2020),
(5,'collection_5',2016),
(6,'collection_6',2017),
(7,'collection_7',2019),
(8,'collection_8',2021);

INSERT into collection_track  values
(1,1),
(10,1),
(2,2),
(11,2),
(3,3),
(12,3),
(4,4),
(13,4),
(5,5),
(14,5),
(6,6),
(15,6),
(7,7),
(16,7),
(8,8),
(17,8);


