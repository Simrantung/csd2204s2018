MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT *FROM Customer;
Empty set (0.08 sec)

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
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.06 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C01','Ashley','Ash','WDC','321200',34);
Query OK, 1 row affected (0.16 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+--------+----------+------+------------+------+
| custid | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C02','Bob marley','Bm','Toronto','100100',23);
Query OK, 1 row affected (0.06 sec)

MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+------------+----------+---------+------------+------+
| custid | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C01    | Ashley     | Ash      | WDC     | 321200     |   34 |
| C02    | Bob marley | Bm       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

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
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO3','Cherlies Theron','Cher','New York','120134',20)
    -> INSERT INTO Customer VALUES('CO3','Cherlies Theron','Cher','New York','120134',20);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INSERT INTO Customer VALUES('CO3','Cherlies Theron','Cher','New York','120134',2' at line 2
MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO3','Cherlies Theron','Cher','New York','120134',20);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO4','Denial Jack','DJ','Brazil','341020',25);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO5','Donna Newman','New','Toronto','130120',50);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO6','Eston M.','M.','Toronto','201023',65);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO7','Bobby Chacko','Chac','New York','320300',70);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO8','Ashko Charles','AK','USA','421044',72);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C09','Tony Special','Specie','GTA','418921',62);
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C10','Jack Sp','Sparrow','New Jersey','102301',35);
Query OK, 1 row affected (0.03 sec)

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

MariaDB [CSD2204S18]> SELECT name,nickname FROM Cutomer;
ERROR 1146 (42S02): Table 'csd2204s18.cutomer' doesn't exist
MariaDB [CSD2204S18]> SELECT name,nickname FROM Customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| Ashley          | Ash      |
| Bob marley      | Bm       |
| Tony Special    | Specie   |
| Jack Sp         | Sparrow  |
| Cherlies Theron | Cher     |
| Denial Jack     | DJ       |
| Donna Newman    | New      |
| Eston M.        | M.       |
| Bobby Chacko    | Chac     |
| Ashko Charles   | AK       |
+-----------------+----------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city,postalcode FROM Customer;
+------------+------------+
| city       | postalcode |
+------------+------------+
| WDC        | 321200     |
| Toronto    | 100100     |
| GTA        | 418921     |
| New Jersey | 102301     |
| New York   | 120134     |
| Brazil     | 341020     |
| Toronto    | 130120     |
| Toronto    | 201023     |
| New York   | 320300     |
| USA        | 421044     |
+------------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name = 'ASHLEY';
+--------+--------+----------+------+------------+------+
| custid | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.06 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname = 'AK';
+--------+---------------+----------+------+------------+------+
| custid | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| CO8    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE name='Eston M.';
+----------+---------+
| name     | city    |
+----------+---------+
| Eston M. | Toronto |
+----------+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Bob marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE city!='Toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Tony Special    | GTA        |
| Jack Sp         | New Jersey |
| Cherlies Theron | New York   |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New York   |
| Ashko Charles   | USA        |
+-----------------+------------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age<50;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
+--------+-----------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age=50;
+--------+--------------+----------+---------+------------+------+
| custid | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| CO5    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age>50;
+--------+---------------+----------+----------+------------+------+
| custid | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| C09    | Tony Special  | Specie   | GTA      | 418921     |   62 |
| CO6    | Eston M.      | M.       | Toronto  | 201023     |   65 |
| CO7    | Bobby Chacko  | Chac     | New York | 320300     |   70 |
| CO8    | Ashko Charles | AK       | USA      | 421044     |   72 |
+--------+---------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name>'Ashley';
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name<'Donna';
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321200     |   34 |
| C02    | Bob marley      | Bm       | Toronto  | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| CO7    | Bobby Chacko    | Chac     | New York | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE name='Ashley' OR city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | WDC     |
| Bob marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE name='Ashley' || city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | WDC     |
| Bob marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE city='New York' || city='Toronto';
+-----------------+----------+
| name            | city     |
+-----------------+----------+
| Bob marley      | Toronto  |
| Cherlies Theron | New York |
| Donna Newman    | Toronto  |
| Eston M.        | Toronto  |
| Bobby Chacko    | New York |
+-----------------+----------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name, age FROM Customer WHERE city='Toronto' AND age>50;
+----------+------+
| name     | age  |
+----------+------+
| Eston M. |   65 |
+----------+------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) FROM Customer WHERE city='Toronto';
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "No of customers in Toronto" FROM Customer WHERE city='Toronto';
+----------------------------+
| No of customers in Toronto |
+----------------------------+
|                          3 |
+----------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "No of customers with age more than 50 WHERE age>50;
    "> ";
+------------------------------------------------------+
| No of customers with age more than 50 WHERE age>50;
 |
+------------------------------------------------------+
|                                                    1 |
+------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) " No of customers with age more than 50" WHERE age > 50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'WHERE age > 50' at line 1
MariaDB [CSD2204S18]> SELECT COUNT(*) "No of customers with age more than 50" WHERE age > 50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'WHERE age > 50' at line 1
MariaDB [CSD2204S18]> SELECT COUNT(*) "No of customers with age more than 50" FROM Customer WHERE age > 50;
+---------------------------------------+
| No of customers with age more than 50 |
+---------------------------------------+
|                                     4 |
+---------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age NOT BETWEEN 30 AND 70;
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C02    | Bob marley      | Bm       | Toronto  | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| CO8    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE NOT age BETWEEN 30 AND 70;
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C02    | Bob marley      | Bm       | Toronto  | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| CO8    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "No of customers having age between 24 and 27" FROM Customer WHERE age >> 24 && age <<27;
+----------------------------------------------+
| No of customers having age between 24 and 27 |
+----------------------------------------------+
|                                            0 |
+----------------------------------------------+
1 row in set (0.05 sec)

MariaDB [CSD2204S18]> SELECT max(age) FROM Customer;
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.06 sec)

MariaDB [CSD2204S18]> SELECT min(age) FROM Customer;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT avg(age) FROM Customer;
+----------+
| avg(age) |
+----------+
|  45.6000 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name LIKE 'B%';
+--------+--------------+----------+----------+------------+------+
| custid | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C02    | Bob marley   | Bm       | Toronto  | 100100     |   23 |
| CO7    | Bobby Chacko | Chac     | New York | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name NOT LIKE 'B';
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

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name NOT LIKE 'B%';
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name LIKE '%n';
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| CO3    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| CO5    | Donna Newman    | New      | Toronto  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE city LIKE 'n%';
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| CO7    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name LIKE '__n%';
+--------+--------------+----------+---------+------------+------+
| custid | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C09    | Tony Special | Specie   | GTA     | 418921     |   62 |
| CO4    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| CO5    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name LIKE '__n_a%';
+--------+--------------+----------+---------+------------+------+
| custid | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| CO4    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| CO5    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer LIMIT 4;
+--------+--------------+----------+------------+------------+------+
| custid | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley   | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age  IN (20,25,65,72);
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| CO3    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| CO6    | Eston M.        | M.       | Toronto  | 201023     |   65 |
| CO8    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age NOT IN(20,25,65,72);
+--------+--------------+----------+------------+------------+------+
| custid | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley   | Bm       | Toronto    | 100100     |   23 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
| CO5    | Donna Newman | New      | Toronto    | 130120     |   50 |
| CO7    | Bobby Chacko | Chac     | New York   | 320300     |   70 |
+--------+--------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE city IN ('Toronto','GTA','USA','WDC');
+--------+---------------+----------+---------+------------+------+
| custid | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | Ashley        | Ash      | WDC     | 321200     |   34 |
| C02    | Bob marley    | Bm       | Toronto | 100100     |   23 |
| C09    | Tony Special  | Specie   | GTA     | 418921     |   62 |
| CO5    | Donna Newman  | New      | Toronto | 130120     |   50 |
| CO6    | Eston M.      | M.       | Toronto | 201023     |   65 |
| CO8    | Ashko Charles | AK       | USA     | 421044     |   72 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(city) 'Unique Cities' FROM Customer;
+---------------+
| Unique Cities |
+---------------+
| WDC           |
| Toronto       |
| GTA           |
| New Jersey    |
| New York      |
| Brazil        |
| USA           |
+---------------+
7 rows in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(city) AS 'Unique Cities' FROM Customer;
+---------------+
| Unique Cities |
+---------------+
| WDC           |
| Toronto       |
| GTA           |
| New Jersey    |
| New York      |
| Brazil        |
| USA           |
+---------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(DISTINCT(city)) AS 'Unique Cities' FROM Customer;
+---------------+
| Unique Cities |
+---------------+
|             7 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name;
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
10 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name ASC;
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

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name DESC;
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

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY age DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custid | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| CO8    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer BY age DESC LIMIT 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'BY age DESC LIMIT 2' at line 1
MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1;
+--------+--------------+----------+----------+------------+------+
| custid | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| CO7    | Bobby Chacko | Chac     | New York | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY age ASC LIMIT 1;
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| CO3    | Cherlies Theron | Cher     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY age ASC LIMIT 2) AS t ORDER BY age DESC LIMIT 1;
+--------+------------+----------+---------+------------+------+
| custid | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C02    | Bob marley | Bm       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT max(age)*+10*20/2 from customer;
+-------------------+
| max(age)*+10*20/2 |
+-------------------+
|         7200.0000 |
+-------------------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT 10+20 AS 'SUM OF 10+20';
+--------------+
| SUM OF 10+20 |
+--------------+
|           30 |
+--------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> EXIT;
