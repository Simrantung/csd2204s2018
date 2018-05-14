MariaDB [(none)]> SHOW TABLES;
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.05 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name,city ASC;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name DESC, city ASC;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY custid;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY custid DESC LIMIT 3;
+--------+---------------+----------+----------+------------+------+
| custid | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| CO8    | Ashko Charles | AK       | USA      | 421044     |   72 |
| CO7    | Bobby Chacko  | Chac     | New York | 320300     |   70 |
| CO6    | Eston M.      | M.       | Toronto  | 201023     |   65 |
+--------+---------------+----------+----------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer
    -> \g
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY custid;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY custid asc;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY NAME asc;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY custid deSC LIMIT 3;
+--------+---------------+----------+----------+------------+------+
| custid | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| CO8    | Ashko Charles | AK       | USA      | 421044     |   72 |
| CO7    | Bobby Chacko  | Chac     | New York | 320300     |   70 |
| CO6    | Eston M.      | M.       | Toronto  | 201023     |   65 |
+--------+---------------+----------+----------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY custID DESC LIMIT 3) Customer ORDER BY custid ASC LIMIT 3;
+--------+---------------+----------+----------+------------+------+
| custid | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| CO6    | Eston M.      | M.       | Toronto  | 201023     |   65 |
| CO7    | Bobby Chacko  | Chac     | New York | 320300     |   70 |
| CO8    | Ashko Charles | AK       | USA      | 421044     |   72 |
+--------+---------------+----------+----------+------------+------+
3 rows in set (0.05 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer  GROUP BY city;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city FROM Customer GROUP BY city;
+------------+
| city       |
+------------+
| Brazil     |
| GTA        |
| New Jersey |
| New York   |
| Toronto    |
| USA        |
| WDC        |
+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(city) "Unique Cities" FROM Customer GROUP BY City;
+---------------+
| Unique Cities |
+---------------+
|             1 |
|             1 |
|             1 |
|             2 |
|             3 |
|             1 |
|             1 |
+---------------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT city COUNT(city) "No. of customers" FROM Customer GROUP BY City;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'COUNT(city) "No. of customers" FROM Customer GROUP BY City' at line 1
MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. of customers" FROM Customer GROUP BY City;
+------------+------------------+
| city       | No. of customers |
+------------+------------------+
| Brazil     |                1 |
| GTA        |                1 |
| New Jersey |                1 |
| New York   |                2 |
| Toronto    |                3 |
| USA        |                1 |
| WDC        |                1 |
+------------+------------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "Total Unique cities" FROM Customer GROUP BY City;
+---------------------+
| Total Unique cities |
+---------------------+
|                   1 |
|                   1 |
|                   1 |
|                   2 |
|                   3 |
|                   1 |
|                   1 |
+---------------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(city) FROM Customer;
+------------+
| city       |
+------------+
| WDC        |
| Toronto    |
| GTA        |
| New Jersey |
| New York   |
| Brazil     |
| USA        |
+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. of customers" FROM Customer WHERE city LIKE 'New%' GROUP BY City;
+------------+------------------+
| city       | No. of customers |
+------------+------------------+
| New Jersey |                1 |
| New York   |                2 |
+------------+------------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. of customers" FROM Customer  GROUP BY city HAVING city LIKE 'New%' OR city='Toronto';
+------------+------------------+
| city       | No. of customers |
+------------+------------------+
| New Jersey |                1 |
| New York   |                2 |
| Toronto    |                3 |
+------------+------------------+
3 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. of customers" FROM Customer  GROUP BY city HAVINg COUNT(city)>2;
+---------+------------------+
| city    | No. of customers |
+---------+------------------+
| Toronto |                3 |
+---------+------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP '^D';
+--------+--------------+----------+---------+------------+------+
| custid | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| CO4    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| CO5    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.05 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP 'n$';
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| CO3    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| CO5    | Donna Newman    | New      | Toronto  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP '^..a';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP '^..e';
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| CO3    | Cherlies Theron | Cher     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE postalcode REGEXP '^[0-9]';
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE postalcode REGEXP '^[A-Z]';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname REGEXP '^A*;
    '> /G
    '> CD;
    '> '
    -> \G
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE city REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE city rLIKE '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE city rLIKE '^.{2}';
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.05 sec)

MariaDB [CSD2204S18]> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2018-05-14 09:15:18 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE Customer ADD COLUMN dob DATE;
Query OK, 0 rows affected (0.47 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC Customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custid     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| dob        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+------+
| custid | name            | nickname | city       | postalCode | age  | dob  |
+--------+-----------------+----------+------------+------------+------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | NULL |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 | NULL |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | NULL |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | NULL |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 | NULL |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 | NULL |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 | NULL |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | NULL |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 | NULL |
+--------+-----------------+----------+------------+------------+------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1991-01-10' WHERE custID= 'C01';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custid | name            | nickname | city       | postalCode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 1991-01-10 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 | NULL       |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | NULL       |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | NULL       |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 | NULL       |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL       |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 | NULL       |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 | NULL       |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | NULL       |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 | NULL       |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1996-04-15' WHERE custID= 'C02';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1994=05=09' WHERE custID= 'C03';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1995-11-03' WHERE custID= 'C04';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1995-01-16' WHERE custID= 'C05';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1995-10-22' WHERE custID= 'C06';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1992-11-07' WHERE custID= 'C07';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1996-05-07' WHERE custID= 'C08';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1985-08-28' WHERE custID= 'C09';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1995-07-17' WHERE custID= 'C10';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custid | name            | nickname | city       | postalCode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 1991-01-10 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 | 1996-04-15 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | 1985-08-28 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | 1995-07-17 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 | NULL       |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL       |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 | NULL       |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 | NULL       |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | NULL       |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 | NULL       |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1994-05-09' WHERE custID= 'CO3';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> select * FROM Customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custid | name            | nickname | city       | postalCode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 1991-01-10 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 | 1996-04-15 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | 1985-08-28 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | 1995-07-17 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 | 1994-05-09 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL       |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 | NULL       |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 | NULL       |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | NULL       |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 | NULL       |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1995-11-03' WHERE custID= 'CO4';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1995-01-16' WHERE custID= 'CO5';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custid | name            | nickname | city       | postalCode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 1991-01-10 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 | 1996-04-15 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | 1985-08-28 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | 1995-07-17 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 | 1994-05-09 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | 1995-11-03 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 | 1995-01-16 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 | NULL       |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | NULL       |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 | NULL       |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1995-10-22' WHERE custID= 'CO6';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1992-11-07' WHERE custID= 'CO7';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob='1996-05-07' WHERE custID= 'CO8';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custid | name            | nickname | city       | postalCode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 1991-01-10 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 | 1996-04-15 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | 1985-08-28 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | 1995-07-17 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 | 1994-05-09 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | 1995-11-03 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 | 1995-01-16 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 | 1995-10-22 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | 1992-11-07 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 | 1996-05-07 |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name, dob,TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM Customer;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-10 |   27 |
| Bob marley      | 1996-04-15 |   22 |
| Tony Special    | 1985-08-28 |   32 |
| Jack Sp         | 1995-07-17 |   22 |
| Cherlies Theron | 1994-05-09 |   24 |
| Denial Jack     | 1995-11-03 |   22 |
| Donna Newman    | 1995-01-16 |   23 |
| Eston M.        | 1995-10-22 |   22 |
| Bobby Chacko    | 1992-11-07 |   25 |
| Ashko Charles   | 1996-05-07 |   22 |
+-----------------+------------+------+
10 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT name, dob,TIMESTAMPDIFF(DAY,dob,CURDATE()) "age" FROM Customer;
+-----------------+------------+-------+
| name            | dob        | age   |
+-----------------+------------+-------+
| Ashley          | 1991-01-10 |  9986 |
| Bob marley      | 1996-04-15 |  8064 |
| Tony Special    | 1985-08-28 | 11947 |
| Jack Sp         | 1995-07-17 |  8337 |
| Cherlies Theron | 1994-05-09 |  8771 |
| Denial Jack     | 1995-11-03 |  8228 |
| Donna Newman    | 1995-01-16 |  8519 |
| Eston M.        | 1995-10-22 |  8240 |
| Bobby Chacko    | 1992-11-07 |  9319 |
| Ashko Charles   | 1996-05-07 |  8042 |
+-----------------+------------+-------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name, dob,TIMESTAMPDIFF(DAY,dob,CURDATE()) "age" FROM Customer HAVING age=22;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name, dob,TIMESTAMPDIFF(DAY,dob,CURDATE()) "age" FROM Customer HAVING age= 22;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name, dob,TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM Customer HAVING age= 22;
+---------------+------------+------+
| name          | dob        | age  |
+---------------+------------+------+
| Bob marley    | 1996-04-15 |   22 |
| Jack Sp       | 1995-07-17 |   22 |
| Denial Jack   | 1995-11-03 |   22 |
| Eston M.      | 1995-10-22 |   22 |
| Ashko Charles | 1996-05-07 |   22 |
+---------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name, dob,TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM Customer WHERE TIMESTAMPDIFF(YEAR,dob,CURDATE())= 22;
+---------------+------------+------+
| name          | dob        | age  |
+---------------+------------+------+
| Bob marley    | 1996-04-15 |   22 |
| Jack Sp       | 1995-07-17 |   22 |
| Denial Jack   | 1995-11-03 |   22 |
| Eston M.      | 1995-10-22 |   22 |
| Ashko Charles | 1996-05-07 |   22 |
+---------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> EXIT;
