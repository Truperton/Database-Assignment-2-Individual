/* 
 * Kacper Krzysztof Grzesiak
 * 19424868
 * Databases 1
 * CSY1026_58
 * 10/FEB/2020
 * Games Programming
 * 1st year
 */
-- CSY1026_58@student/19424868
-- @C:\database\scripts\insert_58.txt

INSERT INTO sites (site_id, site_name, location)
VALUES (seq_sites.NEXTVAL, 'PARK CAMPUS', 'NORTHAMPTON');

INSERT INTO trainers (trainer_id, t_fname, t_sname, mentor, rate, contact_no)
VALUES (seq_trainers.NEXTVAL, 'MANDY', 'MORRELL', NULL, 5.50, 01604 735500);

SELECT * FROM sites;
SELECT * FROM trainers;