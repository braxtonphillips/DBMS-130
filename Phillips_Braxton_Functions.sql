/*
Braxton Phillips
DBMS 130 - M09 Hands-On Assignment - Numeric and Character Manipulation Using Functions
Due 3/29/2021
*/
--1. Write a query that will show the lowest cost of the DJ's on Demand events. Round to two decimal places.
SELECT ROUND(MIN(COST), 2) FROM D_EVENTS;

--2. Write a query to display the number of months between the event_date of EVENT_ID 125 and today’s date in the DJ's on Demand database. Round to the nearest month.
SELECT ID,EVENT_DATE,
    ROUND(MONTHS_BETWEEN(SYSDATE, EVENT_DATE), 0)
FROM D_EVENTS
WHERE ID = 125;

--3. Write a query that will display the DJ's on Demand CD titles for CD_NUMBER 93 and 95 in UPPERCASE in a column aliased as “Demand Collections.”
SELECT UPPER(TITLE) AS "Demand Collections"
FROM D_CDS
WHERE CD_NUMBER IN (93, 95);

--4. Write a query to create usernames for the DJ's on Demand partners.
SELECT LOWER(SUBSTR(FIRST_NAME, 1, 1)) || LOWER(LAST_NAME) AS NAME
FROM D_PARTNERS;

--5. Write a query that will show the total cost of the DJ's on Demand events.
SELECT SUM(COST) AS TOTAL
FROM D_EVENTS;

--6. sing a DECODE and the DJ's on Demand D_SONGS table, create a query that replaces the 2-minute songs with “shortest” and the 10-minute songs with “longest”. Label the output column.
SELECT DECODE(DURATION, '2 min', 'Shortest', '10 min', 'Longest') as Lengths
FROM D_SONGS;

--7. For all null values in the specialty column in the DJ's on Demand d_partners table, write a query to substitute “No Specialty Available.” Show the first name and specialty columns only.
SELECT FIRST_NAME, SPECIALTY,
    DECODE(SPECIALTY, NULL, 'No Specialty Available') AS SPECIALTY
    FROM D_PARTNERS;

--8. Write a query that will format the DJ's on Demand d_packages columns, low-range, and high-range package costs, in the format $4400.00.
SELECT
    TO_CHAR(LOW_RANGE, '$999,999.99') as "Low Range Costs",
    TO_CHAR(HIGH_RANGE, '$999,999.99') as "High Range Costs"
FROM D_PACKAGES;