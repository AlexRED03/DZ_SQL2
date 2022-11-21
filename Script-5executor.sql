-- количество исполнителей в каждом жанре
SELECT genre_id , COUNT(*) FROM genre_executor
GROUP BY genre_id 
ORDER BY COUNT(*) DESC; 

--количество треков, вошедших в альбомы 2000-2006 годов;
SELECT  COUNT(t.album_id) FROM track t 
join album a on a.id = t.album_id
where a.yar_of_relese >= 2000 and a.yar_of_relese <= 2006;

--средняя продолжительность треков по каждому альбому;
SELECT t.album_id , AVG(t.duration) FROM track t
GROUP BY t.album_id;

--все исполнители, которые не выпустили альбомы в 2000 году;
select e.executor_name  from executor e
join album_executor ae on ae.album_id = e.id
join album a on a.id = ae.album_id
where a.yar_of_relese != 2000;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select c.collection_name  from collection c 
join collection_track ct on ct.track_id = c.id
join track t on t.album_id = ct.track_id 
join album_executor ae on ae.executor_id = t.id
join executor e on e.id = ae.executor_id 
where e.executor_name = 'John Coltrane';

--название альбомов, в которых присутствуют исполнители более 1 жанра;
select a.album_name, COUNT(ae.executor_id) from album a 
join album_executor ae on ae.album_id  = a.id 
join executor e on e.id = ae.executor_id 
join genre_executor ge on ge.executor_id  = e.id 
GROUP BY a.album_name 
having  COUNT(ae.executor_id) >= 0
ORDER BY COUNT(ae.executor_id) DESC;

--наименование треков, которые не входят в сборники;
select name_track  from track t 
left join collection_track ct on t.id = ct.track_id 
where ct.track_id is NULL
GROUP BY t.name_track ;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек
select e.executor_name  from executor e
join album_executor ae on ae.album_id = e.id
join album a on a.id = ae.album_id
join track t on t.id = a.id 
where t.duration = (select min(duration) from track t2) 
GROUP by e.executor_name;

--название альбомов, содержащих наименьшее количество треков.
select album_name, COUNT(t.album_id) as mycount from  album a 
join track t on t.album_id  = a.id 
GROUP by a.album_name
having COUNT(t.album_id) = (select COUNT(t.album_id) as mycount from  album a 
join track t on t.album_id  = a.id 
GROUP by a.album_name order by COUNT(t.album_id)
limit 1)




