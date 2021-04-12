/*
Braxton Phillips
DBMS 130 - M05 Hands-On Assignment - Inserting and Modifying Data
Due 2/22/2021

Ivy Tech DBMS 130 (C4IT)
Hands-On Activity - Inserting and Modifying Data

This file should be used to load the remaining 
records into the tables for step 2 of the assignment.

If any of the scripts fails check the structure of your 
database, primary keys, foreign keys, or permissions.
*/
INSERT INTO d_clients(client_number,first_name,last_name,phone,email)
VALUES(5922,'Hiram','Peters',3715832249,'hpeters@yahoo.com');
INSERT INTO d_clients(client_number,first_name,last_name,phone,email)
VALUES(5857,'Serena','Jones',7035335900,'serena.jones@jones.com');
INSERT INTO d_clients(client_number,first_name,last_name,phone,email)
VALUES(6133,'Lauren','Vigil',4072220090,'lbv@lbv.net');
INSERT INTO d_clients(client_number,first_name,last_name,phone,email)
VALUES(9593,'Jessica','Johnson',2128053020,'jackjones@gmail.com');
INSERT INTO d_clients(client_number,first_name,last_name,phone,email)
VALUES(9595,'Jack','Johnson',2128053020,'jackjones@gmail.com');
INSERT INTO d_clients(client_number,first_name,last_name,phone,email)
VALUES(6846,'Hotel','Monte Carlo',2126022000,'events@hotelmc.com');
INSERT INTO d_clients(client_number,first_name,last_name,phone,email)
VALUES(6134,'Jennifer','Compton',3715241567,'jlcompton@gmail.com');

INSERT INTO d_packages(code,low_range,high_range)
VALUES(79,500,2500);
INSERT INTO d_packages(code,low_range,high_range)
VALUES(87,2501,5000);
INSERT INTO d_packages(code,low_range,high_range)
VALUES(112,5001,10000);
INSERT INTO d_packages(code,low_range,high_range)
VALUES(200,10001,15000);
INSERT INTO d_packages(code,low_range,high_range)
VALUES(205,15001,25000);
INSERT INTO d_packages(code,low_range,high_range)
VALUES(206,25001,25000);

INSERT INTO d_themes(code,description)
VALUES(200,'Tropical');
INSERT INTO d_themes(code,description)
VALUES(220,'Carnival');
INSERT INTO d_themes(code,description)
VALUES(240,'Sixties');
INSERT INTO d_themes(code,description)
VALUES(110,'Classic');
INSERT INTO d_themes(code,description)
VALUES(198,'Mardi Gras');
INSERT INTO d_themes(code,description)
VALUES(454,'Eighties');
INSERT INTO d_themes(code,description)
VALUES(340,'Football');
INSERT INTO d_themes(code,description)
VALUES(502,'Fairy Tale');
INSERT INTO d_themes(code,description)
VALUES(660,'Tropical Escape');
INSERT INTO d_themes(code,description)
VALUES(545,'Holiday Wonderland');
INSERT INTO d_themes(code,description)
VALUES(600,'Relaxation');

INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(100,'Private Home','52 West End Drive, Los Angeles, CA 90210','0','Large kitchen, spacious lawn');
INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(105,'Private Home','123 Magnolia Road, Hudson, N.Y. 11220','0','3 level townhouse, speakers on all floors');
INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(101,'Private Home','4 Primrose Lane, Chevy Chase, MD 22127','0','Gazebo, multi-level deck');
INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(95,'Convention Center','4 Mahogany Drive, Boston, MA 10010','75/hour','School closes at 10pm');
INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(99,'National Park','87 Park Avenue, San Diego, CA 28978','400/flat fee','Bring generators');
INSERT INTO d_venues(id,loc_type,address,rental_fee,comments)
VALUES(220,'Hotel','200 Pennsylvania Ave, Washington D.C. 09002','300/per person','Classy affair, tight security, private entrance for vendors');


INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (100,'Peters Wedding',to_date('02-FEB-14','DD-MON-RR'),'Wedding at private home',8000,100,112,200,5922);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (105,'Vigil wedding',to_date('12-FEB-14','DD-MON-RR'),'Black tie at Monte Carlo Hotel',10000,220,200,200,6133);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (110,'Jobs Today',to_date('04-MAR-14','DD-MON-RR'),'Job networking event',1900,95,79,110,6133);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (115,'Johnson Wedding',to_date('14-MAR-14','DD-MON-RR'),'Small wedding at private home',500,105,79,110,9593);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (120,'Compton Wedding',to_date('05-APR-14','DD-MON-RR'),'Small wedding at private home',500,101,79,110,6134);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (125,'Sponsorship Event',to_date('15-APR-14','DD-MON-RR'),'Corporate Event at Monte Carlo Hotel',8000,220,112,110,5857);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (130,'Corporate Training',to_date('06-MAY-14','DD-MON-RR'),'Corporate training event at convention center',15000,95,200,200,5857);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (135,'Corporate Training',to_date('16-MAY-14','DD-MON-RR'),'Corporate training event at convention center',15000,95,200,220,5857);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (140,'Dungeons and Dragons',to_date('07-JUN-14','DD-MON-RR'),'Gamers convention at convention center',15000,95,200,502,5857);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (145,'Eye of the Tiger Contest',to_date('27-JUN-14','DD-MON-RR'),'Corporate field day at national park',16500,99,200,454,5857);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (150,'Yoga on the Hill',to_date('08-JUL-14','DD-MON-RR'),'Mediation seminar at national park',2000,99,79,600,5857);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (155,'Private Event',to_date('18-JUL-14','DD-MON-RR'),'Event at Monte Carlo Hotel',8000,220,112,240,6846);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (160,'Hotel Wedding',to_date('09-AUG-14','DD-MON-RR'),'Wedding at Monte Carlo Hotel',8500,220,112,110,6846);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (165,'Hotel Wedding',to_date('29-AUG-14','DD-MON-RR'),'Wedding at Monte Carlo Hotel',9500,220,112,110,6846);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (170,'Fire Fighers Fund',to_date('10-SEP-14','DD-MON-RR'),'Event at Monte Carlo Hotel',7500,220,112,340,6846);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (175,'Hotel Wedding',to_date('21-SEP-14','DD-MON-RR'),'Wedding at Monte Carlo Hotel',7000,220,112,110,6846);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (180,'Hotel Wedding',to_date('11-OCT-14','DD-MON-RR'),'Wedding at Monte Carlo Hotel',6800,220,112,110,6846);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (185,'Cyber Hacking Contest',to_date('22-OCT-14','DD-MON-RR'),'Event at Monte Carlo Hotel',5600,220,112,340,6846);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (190,'Hotel Wedding',to_date('12-NOV-14','DD-MON-RR'),'Wedding at Monte Carlo Hotel',9500,220,112,110,6846);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (195,'Turkey Tumble',to_date('23-NOV-14','DD-MON-RR'),'Event at Monte Carlo Hotel',11200,220,200,198,6846);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (205,'New Years Eve Blast',to_date('31-DEC-14','DD-MON-RR'),'Black tie at Monte Carlo Hotel',25000,220,205,220,6846);
INSERT INTO d_events (id,name,event_date,description,cost,venue_id,package_code,theme_code,client_number) 
VALUES (200,'Holiday Festival',to_date('13-DEC-14','DD-MON-RR'),'Holiday Party at Monte Carlo Hotel',12400,220,200,545,6846);

INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (11,'Jennifer','Cho','Weddings','All Types',NULL,33,'Wedding Coordinator');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (22,'Jason','Tsang','Promotional Events','Hip Hop',NULL,33,'Disk Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (33,'Allison','Plumb','Event Planning','Corporate Events',300000,33,'Manager');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (100,'Steven','King','Weddings','All Types',24000,101,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (101,'Neena','Kochhar','Event Planning',NULL,300000,101,'Manager');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (102,'Lex','DeHaan','Corporate Events',NULL,17000,101,'Event Planner');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (200,'Jennifer','Whalen','Religious Events',NULL,4400,101,'Event Planner');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (205,'Shelley','Higgins','Graduations',NULL,12000,101,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (206,'William','Gietz','Graduations',NULL,8300,33,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (149,'Eleni','Zlotkey','Graduations',NULL,10500,33,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (174,'Ellen','Abel','School Dances',NULL,11000,33,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (176,'Jonathon','Taylor','Weddings','All Types',8600,33,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (178,'Kimberely','Grant','Weddings','All Types',7000,33,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (124,'Kevin','Mourgos','Weddings','All Types',5800,101,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (141,'Trenna','Rajs','Weddings','All Types',3500,101,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (142,'Curtis','Davies','All types',NULL,3100,101,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (143,'Randall','Matos','All types',NULL,2600,33,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (144,'Peter','Vargas','All types',NULL,2500,33,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (103,'Alexander','Hunold','All types',NULL,9000,33,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (104,'Bruce','Ernst','Hip Hop',NULL,6000,33,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (107,'Diana','Lorentz','All types',NULL,4200,33,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (201,'Michael','Hartstein','All types',NULL,13000,33,'Disc Jockey');
INSERT INTO d_partners (id,first_name,last_name,expertise,specialty,auth_expense_amt,manager_id,partner_type)
VALUES (202,'Pat','Fay','All types',NULL,6000,33,'Disc Jockey');


INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(11,100,TO_DATE('02-02-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(22,105,TO_DATE('02-12-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(33,110,TO_DATE('03-04-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(100,115,TO_DATE('03-14-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(101,120,TO_DATE('04-05-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(102,125,TO_DATE('04-15-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(200,130,TO_DATE('05-06-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(205,135,TO_DATE('05-16-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(206,140,TO_DATE('06-07-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(149,145,TO_DATE('06-27-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(174,150,TO_DATE('07-08-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(33,155,TO_DATE('07-18-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(176,160,TO_DATE('08-09-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(178,165,TO_DATE('08-29-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(124,170,TO_DATE('09-10-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(141,175,TO_DATE('09-21-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(142,180,TO_DATE('10-11-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(143,185,TO_DATE('10-22-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(144,190,TO_DATE('11-12-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(103,195,TO_DATE('11-23-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(104,200,TO_DATE('12-13-2014','mm-dd-yyyy'),'Visited');
INSERT INTO d_job_assignments(partner_id,event_id,job_date,status)
VALUES(33,205,TO_DATE('12-31-2014','mm-dd-yyyy'),'Visited');

INSERT INTO d_types(code,description)
VALUES(1,'Jazz');
INSERT INTO d_types(code,description)
VALUES(12,'Pop');
INSERT INTO d_types(code,description)
VALUES(40,'Reggae');
INSERT INTO d_types(code,description)
VALUES(88,'Country');
INSERT INTO d_types(code,description)
VALUES(77,'New Age');

INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(45,'Its Finally Over','5 min','The Hobbits',12);
INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(46,'Im Going to Miss My Teacher','2 min','Jane Pop',12);
INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(47,'Hurrah for Today','3 min','The Jubilant Trio',77);
INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(48,'Meet Me At the Altar','6 min','Bobby West',1);
INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(49,'Lets Celebrate','8 min','The Celebrants',77);
INSERT INTO d_songs(id,title,duration,artist,type_code)
VALUES(50,'All These Years','10 min','Diana Crooner',88);

INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(100,45,'Play late');
INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(100,46,NULL);
INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(100,47,'Play early');
INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(105,48,'Play after cake cutting');
INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(105,49,'Play first');
INSERT INTO d_play_list_items(event_id,song_id,comments)
VALUES(105,47,'Play for the father');

INSERT INTO d_track_listings(song_id,cd_number,track)
VALUES(45,92,1);
INSERT INTO d_track_listings(song_id,cd_number,track)
VALUES(46,93,1);
INSERT INTO d_track_listings(song_id,cd_number,track)
VALUES(47,91,2);
INSERT INTO d_track_listings(song_id,cd_number,track)
VALUES(48,95,5);
INSERT INTO d_track_listings(song_id,cd_number,track)
VALUES(49,91,3);

INSERT INTO D_CDS(CD_NUMBER, TITLE, PRODUCER, YEAR)
VALUES(90, 'The Celebrants Live in Concert', 'Old Town Records', 1997);
INSERT INTO D_CDS(CD_NUMBER, TITLE, PRODUCER, YEAR)
VALUES(91, 'Party Music for All Occasions', 'The Music Man', 2000);
INSERT INTO D_CDS(CD_NUMBER, TITLE, PRODUCER, YEAR)
VALUES(92, 'Back to the Shire', 'Middle Earth Records', 2002);
INSERT INTO D_CDS(CD_NUMBER, TITLE, PRODUCER, YEAR)
VALUES(93, 'Songs from My Childhood', 'Old Town Records', 1999);
INSERT INTO D_CDS(CD_NUMBER, TITLE, PRODUCER, YEAR)
VALUES(94, 'Carpe Diem', 'R & B Inc.', 2000);
INSERT INTO D_CDS(CD_NUMBER, TITLE, PRODUCER, YEAR)
VALUES(95, 'Here Comes the Bride', 'The Music Man', 2001);
INSERT INTO D_CDS(CD_NUMBER, TITLE, PRODUCER, YEAR)
VALUES(96, 'Graduation Songbook', 'Tunes Are Us', 1998);
INSERT INTO D_CDS(CD_NUMBER, TITLE, PRODUCER, YEAR)
VALUES(98, 'Whirled Peas', 'Old Town Records', 2004);

UPDATE D_PARTNERS
SET EXPERTISE = Promotional
WHERE EVENT_ID = 22;

UPDATE D_PARTNERS
SET SPECIALTY = CorporateEvent
WHERE EVENT_ID = 33;

UPDATE D_PLAY_LIST_ITEMS
SET COMMENTS = "after Graduation"
WHERE EVENT_ ID = 100 AND SONG_ID = 46;

UPDATE D_VENUES
SET RENTAL_FEE = "325/per person"
WHERE ID= 220;

UPDATE D_THEMES
SET DESCRIPTION = "Tiki Lounge"
WHERE CODE = 660;

DELETE FROM D_CLIENTS WHERE CLIENT_NUMBER = 9595;