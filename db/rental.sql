
D:\web\server2go\server\mysql\bin>mysql.exe -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 7
Server version: 5.0.41-community-nt MySQL Community Edition (GPL)

Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
This software comes with ABSOLUTELY NO WARRANTY. This is free software,
and you are welcome to modify and redistribute it under the GPL v2 license

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
//1//
mysql> CREATE DATABASE rental;
Query OK, 1 row affected (0.00 sec)

mysql>

//2//
mysql> USE rental;
Database changed
mysql> CREATE TABLE dvd
    -> (
    -> dvd_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    -> title VARCHAR(255),
    -> production_year YEAR
    -> )
    -> ;
Query OK, 0 rows affected (0.05 sec)

mysql> SELECT * FROM dvd;
Empty set (0.00 sec)

mysql> SHOW COLUMNS FROM dvd;
+-----------------+------------------+------+-----+---------+----------------+
| Field           | Type             | Null | Key | Default | Extra          |
+-----------------+------------------+------+-----+---------+----------------+
| dvd_id          | int(11) unsigned | NO   | PRI | NULL    | auto_increment |
| title           | varchar(255)     | YES  |     | NULL    |                |
| production_year | year(4)          | YES  |     | NULL    |                |
+-----------------+------------------+------+-----+---------+----------------+
3 rows in set (0.02 sec)

mysql>	

mysql> CREATE TABLE customer
    ->
    -> (
    -> customer_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    -> first_name VARCHAR(255),
    -> last_name VARCHAR(255),
    -> passport_code INT(11),
    -> registration_date DATE
    -> )
    -> ;
Query OK, 0 rows affected (0.05 sec)

mysql> SHOW COLUMNS FROM customer;
+-------------------+------------------+------+-----+---------+----------------+
| Field             | Type             | Null | Key | Default | Extra          |
+-------------------+------------------+------+-----+---------+----------------+
| customer_id       | int(11) unsigned | NO   | PRI | NULL    | auto_increment |
| first_name        | varchar(255)     | YES  |     | NULL    |                |
| last_name         | varchar(255)     | YES  |     | NULL    |                |
| passport_code     | int(11)          | YES  |     | NULL    |                |
| registration_date | date             | YES  |     | NULL    |                |
+-------------------+------------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql>

mysql> CREATE TABLE offer
    -> (
    -> offer_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    -> dvd_id INT(11),
    -> customer_id INT(11),
    -> offer_date DATE,
    -> return_date DATE
    -> )
    -> ;
Query OK, 0 rows affected (0.06 sec)

mysql> SHOW COLUMNS FROM offer;
+-------------+------------------+------+-----+---------+----------------+
| Field       | Type             | Null | Key | Default | Extra          |
+-------------+------------------+------+-----+---------+----------------+
| offer_id    | int(11) unsigned | NO   | PRI | NULL    | auto_increment |
| dvd_id      | int(11)          | YES  |     | NULL    |                |
| customer_id | int(11)          | YES  |     | NULL    |                |
| offer_date  | date             | YES  |     | NULL    |                |
| return_date | date             | YES  |     | NULL    |                |
+-------------+------------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql>
//2///

mysql> INSERT INTO dvd
    -> (title ,production_year)
    -> VALUES
    -> ('movie1' , 1990),
    -> ('movie2' , 1992),
    -> ('movie3' , 1994),
    -> ('movie4' , 1998),
    -> ('movie5' , 1002),
    -> ('movie6' , 2002),
    -> ('movie7' , 2007),
    -> ('movie8' , 2010),
    -> ('movie9' , 2012),
    -> ('movie10' , 2015);
Query OK, 10 rows affected, 1 warning (0.00 sec)
Records: 10  Duplicates: 0  Warnings: 1

mysql> SELECT * FROM dvd;
+--------+---------+-----------------+
| dvd_id | title   | production_year |
+--------+---------+-----------------+
|      1 | movie1  |            1990 |
|      2 | movie2  |            1992 |
|      3 | movie3  |            1994 |
|      4 | movie4  |            1998 |
|      5 | movie5  |            0000 |
|      6 | movie6  |            2002 |
|      7 | movie7  |            2007 |
|      8 | movie8  |            2010 |
|      9 | movie9  |            2012 |
|     10 | movie10 |            2015 |
+--------+---------+-----------------+
10 rows in set (0.00 sec)

mysql>

mysql> INSERT INTO customer
    -> (first_name, last_name, passport_code, registration_date)
    -> VALUES
    -> ('Ivan', 'Ivanov', 111111111 ,'2012-2-12' ),
    -> ('Petr', 'Petrov', 222222222 ,'2011-6-4' ),
    -> ('Sidr', 'Sidorov', 333333333 ,'2014-10-11' ),
    -> ('Iosif', 'Stalin', 444444444 ,'1953-10-12' ),
    -> ('Vladimir', 'Lenin', 555555555 ,'1923-11-12' );
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM customer;
+-------------+------------+-----------+---------------+-------------------+
| customer_id | first_name | last_name | passport_code | registration_date |
+-------------+------------+-----------+---------------+-------------------+
|           1 | Ivan       | Ivanov    |     111111111 | 2012-02-12        |
|           2 | Petr       | Petrov    |     222222222 | 2011-06-04        |
|           3 | Sidr       | Sidorov   |     333333333 | 2014-10-11        |
|           4 | Iosif      | Stalin    |     444444444 | 1953-10-12        |
|           5 | Vladimir   | Lenin     |     555555555 | 1923-11-12        |
+-------------+------------+-----------+---------------+-------------------+
5 rows in set (0.00 sec)

mysql>


mysql> INSERT INTO offer
    -> (dvd_id, customer_id, offer_date, return_date)
    -> VALUES
    -> (1, 5, '2015-5-5','2015-5-20'),
    -> (5, 4, '2015-5-9','2015-5-15'),
    -> (7, 1, '2015-2-15','2015-4-1'),
    -> (9, 2, '2015-1-15','2015-3-20'),
    -> (9, 3, '2015-3-15','2015-4-20');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM offer;
+----------+--------+-------------+------------+-------------+
| offer_id | dvd_id | customer_id | offer_date | return_date |
+----------+--------+-------------+------------+-------------+
|        1 |      1 |           5 | 2015-05-05 | 2015-05-20  |
|        2 |      5 |           4 | 2015-05-09 | 2015-05-15  |
|        3 |      7 |           1 | 2015-02-15 | 2015-04-01  |
|        4 |      9 |           2 | 2015-01-15 | 2015-03-20  |
|        5 |      9 |           3 | 2015-03-15 | 2015-04-20  |
+----------+--------+-------------+------------+-------------+
5 rows in set (0.00 sec)

mysql>
///3///

mysql> INSERT INTO dvd
    -> (title, production_year)
    -> VALUES
    -> ('afgan', 2010),
    -> ('exit', 2010);
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM dvd
    -> WHERE production_year = 2010
    -> ORDER BY title;
+--------+--------+-----------------+
| dvd_id | title  | production_year |
+--------+--------+-----------------+
|     11 | afgan  |            2010 |
|     12 | exit   |            2010 |
|      8 | movie8 |            2010 |
+--------+--------+-----------------+
3 rows in set (0.00 sec)

mysql>

///4////
mysql> INSERT INTO offer
    -> (dvd_id, customer_id, offer_date, return_date)
    -> VALUES
    -> (2, 3, '2013-6-7','2015-9-9');
Query OK, 1 rows affected, 1 warning (0.00 sec)
Records: 1  Duplicates: 0  Warnings: 1


mysql>
mysql> SELECT title FROM dvd
    -> WHERE
    -> dvd_id IN
    -> (
    -> SELECT dvd_id FROM offer
    -> WHERE
    -> return_date > NOW()
    -> );
+--------+
| title  |
+--------+
| movie2 |
+--------+
1 row in set (0.00 sec)

//////5//
mysql> SELECT customer_id FROM offer offer
    -> WHERE
    -> (
    -> YEAR(offer_date) = YEAR(NOW())
    -> );
+-------------+
| customer_id |
+-------------+
|           5 |
|           4 |
|           1 |
|           2 |
|           3 |
+-------------+
5 rows in set (0.00 sec)

///6///

mysql> SElECT first_name,last_name FROM customer
    -> WHERE
    -> customer	_id IN
    -> (
    -> SELECT customer_id FROM offer
    -> WHERE
    -> (
    -> YEAR(offer_date) = YEAR(NOW())
    -> )
    -> );
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Ivan       | Ivanov    |
| Petr       | Petrov    |
| Sidr       | Sidorov   |
| Iosif      | Stalin    |
| Vladimir   | Lenin     |
+------------+-----------+
5 rows in set (0.00 sec)

mysql> SElECT title FROM dvd 
    -> WHERE
    -> dvd_id IN
    -> (
    -> SELECT dvd_id FROM offer
    -> WHERE
    -> (
    ->  YEAR(offer_date) = YEAR(NOW())
    -> )
    -> );
+--------+
| title  |
+--------+
| movie1 |
| movie5 |
| movie7 |
| movie9 |
+--------+

+------------+-----------+--------+
| first_name | last_name | title  |
+------------+-----------+--------+
| Ivan       | Ivanov    | movie1 |
| Petr       | Petrov    | movie1 |
| Sidr       | Sidorov   | movie1 |
| Iosif      | Stalin    | movie1 |
| Vladimir   | Lenin     | movie1 |
| Ivan       | Ivanov    | movie2 |
| Petr       | Petrov    | movie2 |
| Sidr       | Sidorov   | movie2 |
| Iosif      | Stalin    | movie2 |
| Vladimir   | Lenin     | movie2 |
| Ivan       | Ivanov    | movie5 |
| Petr       | Petrov    | movie5 |
| Sidr       | Sidorov   | movie5 |
| Iosif      | Stalin    | movie5 |
| Vladimir   | Lenin     | movie5 |
| Ivan       | Ivanov    | movie7 |
| Petr       | Petrov    | movie7 |
| Sidr       | Sidorov   | movie7 |
| Iosif      | Stalin    | movie7 |
| Vladimir   | Lenin     | movie7 |
| Ivan       | Ivanov    | movie9 |
| Petr       | Petrov    | movie9 |
| Sidr       | Sidorov   | movie9 |
| Iosif      | Stalin    | movie9 |
| Vladimir   | Lenin     | movie9 |
+------------+-----------+--------+
25 rows in set (0.01 sec)