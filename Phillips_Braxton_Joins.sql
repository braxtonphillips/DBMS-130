/*
Braxton Phillips
M10 Hands-On Assignment - Retrieving Data From Multiple Tables Using Joins
Due 4/5/2021
*/

--1. Create a Cross join that displays the columns in the d_play_list_items and the d_track_listings in the DJ's on Demand database.
SELECT * FROM d_play_list_items
CROSS JOIN d_track_listings;

--2.Correct the Cross join produced in question 1 by creating an equijoin using a common column.
SELECT *
FROM d_play_list_items JOIN d_track_listings USING (SONG_ID);

--3. Write a query to display the description, type, and artist from the DJ's on Demand database.
SELECT  d_songs.artist,  d_songs.type_code, d_types.description
FROM d_songs, d_types
WHERE d_songs.type_code = d_types.code;

--4. Rewrite the query in question 3 to select only those titles with an ID of 45 or 49.
SELECT  d_songs.artist,  d_songs.type_code, d_types.description
FROM d_songs, d_types
WHERE d_songs.type_code = d_types.code AND d_songs.id in (45, 49);

--5. Create and execute an equijoin between DJ's on Demand tables d_track_listings and d_cds. Return the song_id and the track, the Producer only. Order the output by song_id.
SELECT song_id, track, Producer 
FROM d_track_listings t INNER JOIN d_cds c ON t.cd_number = c.cd_number
ORDER BY song_id;

--6. Write a query to join DJ's on Demand d_play_list_items, d_track_listings, and d_cds tables with the JOIN USING syntax. Include the song ID, title, and comments in the output.

--7. Write a query of the DJ's on Demand database to return the first name, last name, PackageCode, and description of the event the client held. Include all the clients even if they have not had an event scheduled.
SELECT first_name, last_name, PACKAGE_CODE, description
FROM d_clients c OUTER JOIN d_events e ON c.client_number = e.client_number;

--8. Write a query in the DJ's on Demand database that extracts information from these tables: d_clients table, d_events table, and d_job_assignments. Your query should return the client name, event description, and job date. Order the output by event name.