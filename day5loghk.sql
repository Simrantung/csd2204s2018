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

MariaDB [CSD2204S18]> CREATE TABLE Persons (
    ->  ID integer(3),
    ->  LastName varchar(255) NOT NULL,
    ->  FirstName varchar(255) NOT NULL,
    ->  Age integer(3),
    -> CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
    -> );
Query OK, 0 rows affected (0.31 sec)

MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
| persons              |
+----------------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Persons;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> DESC Persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(255) | NO   | PRI | NULL    |       |
| FirstName | varchar(255) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM Persons;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LastName    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> CREATE TABLE Orders (
    ->  OrderID integer(3) NOT NULL,
    ->  OrderNumber integer(3) NOT NULL,
    ->  PersonID integer(3),
    ->  PRIMARY KEY (OrderID),
    ->  CONSTRAINT FK_PersonOrder FOREIGN KEY (P
    -> ersonID)
    ->  REFERENCES Persons(PersonID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ersonID)
 REFERENCES Persons(PersonID)
)' at line 7
MariaDB [CSD2204S18]> CREATE TABLE Orders(
    -> ORDERID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    -> REFERENCES Persons(ID));
Query OK, 0 rows affected (0.23 sec)

MariaDB [CSD2204S18]> SHOW CREATE TABLE Orders;
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                                      |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Orders | CREATE TABLE `orders` (
  `ORDERID` int(3) NOT NULL,
  `OrderNumber` int(3) NOT NULL,
  `PersonID` int(3) DEFAULT NULL,
  PRIMARY KEY (`ORDERID`),
  KEY `FK_PersonOrder` (`PersonID`),
  CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM Orders;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | ORDERID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PersonOrder |            1 | PersonID    | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
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

MariaDB [CSD2204S18]> CREATE TABLE c1 AS SELECT * FROM Customer;
Query OK, 10 rows affected (0.38 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> CREATE TABLE c2 AS SELECT name,postalCode FROM Customer WHERE city="Toronto";
Query OK, 3 rows affected (0.25 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custid     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM c1;
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

MariaDB [CSD2204S18]> DESC c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Bob marley   | 100100     |
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> CREATE TABLE c3 LIKE Customer;
Query OK, 0 rows affected (0.23 sec)

MariaDB [CSD2204S18]> DESC c3;
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

MariaDB [CSD2204S18]> SELECT * FROM c3;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO c3 SELECT * FROM Customer;
Query OK, 10 rows affected (0.02 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM c3;
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

MariaDB [CSD2204S18]> ALTER TABLE c3 ADD COLUMN Country VARCHAR(100);
Query OK, 0 rows affected (0.42 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c3;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| custid     | varchar(5)   | NO   | PRI | NULL    |       |
| name       | varchar(50)  | YES  |     | NULL    |       |
| nickname   | varchar(10)  | YES  |     | NULL    |       |
| city       | varchar(20)  | YES  |     | NULL    |       |
| postalCode | varchar(10)  | YES  |     | NULL    |       |
| age        | int(3)       | YES  |     | NULL    |       |
| Country    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 MODIFY COLUMN Country VARCHAR(40);
Query OK, 10 rows affected (0.59 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custid     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 MODIFY COLUMN country VARCHAR(40);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custid     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 CHANGE COLUMN custid customerID VARCHAR(5);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 DROP COLUMN nickname;
Query OK, 0 rows affected (0.31 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 MODIFY name VARCHAR(50) NOT NULL;
Query OK, 10 rows affected (2.12 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custid     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S18]> ALTER TABLE c1 ADD PRIMARY KEY(custid);
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c1;
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
6 rows in set (0.02 sec)

MariaDB [CSD2204S18]> DESC c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S18]> ALTER TABLE c2 MODIFY COLUMN name VARCHAR(50);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.02 sec)

MariaDB [CSD2204S18]> ALTER TABLE c2 ADD PRIMARY KEY(custid);
ERROR 1072 (42000): Key column 'custid' doesn't exist in table
MariaDB [CSD2204S18]> DESC C1;
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

MariaDB [CSD2204S18]> ALTER TABLE c1 DROP custid;
Query OK, 10 rows affected (0.61 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC Persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(255) | NO   | PRI | NULL    |       |
| FirstName | varchar(255) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM Persons;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LastName    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | NULL    |
| C02        | Bob marley      | Toronto    | 100100     |   23 | NULL    |
| C09        | Tony Special    | GTA        | 418921     |   62 | NULL    |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | NULL    |
| CO3        | Cherlies Theron | New York   | 120134     |   20 | NULL    |
| CO4        | Denial Jack     | Brazil     | 341020     |   25 | NULL    |
| CO5        | Donna Newman    | Toronto    | 130120     |   50 | NULL    |
| CO6        | Eston M.        | Toronto    | 201023     |   65 | NULL    |
| CO7        | Bobby Chacko    | New York   | 320300     |   70 | NULL    |
| CO8        | Ashko Charles   | USA        | 421044     |   72 | NULL    |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.02 sec)

MariaDB [CSD2204S18]> UPDATE c3 SET country='USA';
Query OK, 10 rows affected (0.05 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA     |
| C02        | Bob marley      | Toronto    | 100100     |   23 | USA     |
| C09        | Tony Special    | GTA        | 418921     |   62 | USA     |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA     |
| CO3        | Cherlies Theron | New York   | 120134     |   20 | USA     |
| CO4        | Denial Jack     | Brazil     | 341020     |   25 | USA     |
| CO5        | Donna Newman    | Toronto    | 130120     |   50 | USA     |
| CO6        | Eston M.        | Toronto    | 201023     |   65 | USA     |
| CO7        | Bobby Chacko    | New York   | 320300     |   70 | USA     |
| CO8        | Ashko Charles   | USA        | 421044     |   72 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE c3 SET country='Canada' WHERE city IN ('Toronto','GTA');
Query OK, 4 rows affected (0.09 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA     |
| C02        | Bob marley      | Toronto    | 100100     |   23 | Canada  |
| C09        | Tony Special    | GTA        | 418921     |   62 | Canada  |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA     |
| CO3        | Cherlies Theron | New York   | 120134     |   20 | USA     |
| CO4        | Denial Jack     | Brazil     | 341020     |   25 | USA     |
| CO5        | Donna Newman    | Toronto    | 130120     |   50 | Canada  |
| CO6        | Eston M.        | Toronto    | 201023     |   65 | Canada  |
| CO7        | Bobby Chacko    | New York   | 320300     |   70 | USA     |
| CO8        | Ashko Charles   | USA        | 421044     |   72 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE c3 SET country='South America' WHERE city ='Brazil';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------------+
| customerID | name            | city       | postalCode | age  | country       |
+------------+-----------------+------------+------------+------+---------------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA           |
| C02        | Bob marley      | Toronto    | 100100     |   23 | Canada        |
| C09        | Tony Special    | GTA        | 418921     |   62 | Canada        |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA           |
| CO3        | Cherlies Theron | New York   | 120134     |   20 | USA           |
| CO4        | Denial Jack     | Brazil     | 341020     |   25 | South America |
| CO5        | Donna Newman    | Toronto    | 130120     |   50 | Canada        |
| CO6        | Eston M.        | Toronto    | 201023     |   65 | Canada        |
| CO7        | Bobby Chacko    | New York   | 320300     |   70 | USA           |
| CO8        | Ashko Charles   | USA        | 421044     |   72 | USA           |
+------------+-----------------+------------+------------+------+---------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Bob marley   | 100100     |
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DELETE FROM c2 WHERE name LIKE "bob%";
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204S18]> SELECT * FROM c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DELETE FROM c2;
Query OK, 2 rows affected (0.06 sec)

MariaDB [CSD2204S18]> SELECT * FROM c2;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> DROP TABLE c2;
Query OK, 0 rows affected (0.17 sec)

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

MariaDB [CSD2204S18]> SELECT * FROM c1;
+-----------------+----------+------------+------------+------+
| name            | nickname | city       | postalCode | age  |
+-----------------+----------+------------+------------+------+
| Ashley          | Ash      | WDC        | 321200     |   34 |
| Bob marley      | Bm       | Toronto    | 100100     |   23 |
| Tony Special    | Specie   | GTA        | 418921     |   62 |
| Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| Cherlies Theron | Cher     | New York   | 120134     |   20 |
| Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| Donna Newman    | New      | Toronto    | 130120     |   50 |
| Eston M.        | M.       | Toronto    | 201023     |   65 |
| Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| Ashko Charles   | AK       | USA        | 421044     |   72 |
+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c1 ADD COLUMN custid VARCHAR(10);
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM c1;
+-----------------+----------+------------+------------+------+--------+
| name            | nickname | city       | postalCode | age  | custid |
+-----------------+----------+------------+------------+------+--------+
| Ashley          | Ash      | WDC        | 321200     |   34 | NULL   |
| Bob marley      | Bm       | Toronto    | 100100     |   23 | NULL   |
| Tony Special    | Specie   | GTA        | 418921     |   62 | NULL   |
| Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | NULL   |
| Cherlies Theron | Cher     | New York   | 120134     |   20 | NULL   |
| Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL   |
| Donna Newman    | New      | Toronto    | 130120     |   50 | NULL   |
| Eston M.        | M.       | Toronto    | 201023     |   65 | NULL   |
| Bobby Chacko    | Chac     | New York   | 320300     |   70 | NULL   |
| Ashko Charles   | AK       | USA        | 421044     |   72 | NULL   |
+-----------------+----------+------------+------------+------+--------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE c1 SET custid="c01" WHERE age>30;
Query OK, 7 rows affected (0.02 sec)
Rows matched: 7  Changed: 7  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM c1;
+-----------------+----------+------------+------------+------+--------+
| name            | nickname | city       | postalCode | age  | custid |
+-----------------+----------+------------+------------+------+--------+
| Ashley          | Ash      | WDC        | 321200     |   34 | c01    |
| Bob marley      | Bm       | Toronto    | 100100     |   23 | NULL   |
| Tony Special    | Specie   | GTA        | 418921     |   62 | c01    |
| Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | c01    |
| Cherlies Theron | Cher     | New York   | 120134     |   20 | NULL   |
| Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL   |
| Donna Newman    | New      | Toronto    | 130120     |   50 | c01    |
| Eston M.        | M.       | Toronto    | 201023     |   65 | c01    |
| Bobby Chacko    | Chac     | New York   | 320300     |   70 | c01    |
| Ashko Charles   | AK       | USA        | 421044     |   72 | c01    |
+-----------------+----------+------------+------------+------+--------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM c1 WHERE custid IS null;
+-----------------+----------+----------+------------+------+--------+
| name            | nickname | city     | postalCode | age  | custid |
+-----------------+----------+----------+------------+------+--------+
| Bob marley      | Bm       | Toronto  | 100100     |   23 | NULL   |
| Cherlies Theron | Cher     | New York | 120134     |   20 | NULL   |
| Denial Jack     | DJ       | Brazil   | 341020     |   25 | NULL   |
+-----------------+----------+----------+------------+------+--------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM c1 WHERE custid IS NOT NULL;
+---------------+----------+------------+------------+------+--------+
| name          | nickname | city       | postalCode | age  | custid |
+---------------+----------+------------+------------+------+--------+
| Ashley        | Ash      | WDC        | 321200     |   34 | c01    |
| Tony Special  | Specie   | GTA        | 418921     |   62 | c01    |
| Jack Sp       | Sparrow  | New Jersey | 102301     |   35 | c01    |
| Donna Newman  | New      | Toronto    | 130120     |   50 | c01    |
| Eston M.      | M.       | Toronto    | 201023     |   65 | c01    |
| Bobby Chacko  | Chac     | New York   | 320300     |   70 | c01    |
| Ashko Charles | AK       | USA        | 421044     |   72 | c01    |
+---------------+----------+------------+------------+------+--------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| custid     | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c1 MODIFY COLUMN age FLOAT(10,2);
Query OK, 10 rows affected (0.80 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> EXIT;
