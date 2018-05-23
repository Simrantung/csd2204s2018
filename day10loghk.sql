MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| brand                |
| c1                   |
| c3                   |
| cart                 |
| category             |
| countries            |
| cust_mast            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| famousmovies         |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movie                |
| orders               |
| payment              |
| persons              |
| product              |
| products             |
| regions              |
| trans                |
+----------------------+
26 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.04 sec)

MariaDB [csd2204s18]> create view v1 AS SELECT * FROM PRODUCTS;
Query OK, 0 rows affected (0.08 sec)

MariaDB [csd2204s18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| brand                |
| c1                   |
| c3                   |
| cart                 |
| category             |
| countries            |
| cust_mast            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| famousmovies         |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movie                |
| orders               |
| payment              |
| persons              |
| product              |
| products             |
| regions              |
| trans                |
| v1                   |
+----------------------+
27 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM V1;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.01 sec)

MariaDB [csd2204s18]> create view v1 AS SELECT * FROM PRODUCTS WHERE PRICE>100;
ERROR 1050 (42S01): Table 'v1' already exists
MariaDB [csd2204s18]> create OR REPLACE view v1 AS SELECT * FROM PRODUCTS WHERE PRICE>100;
Query OK, 0 rows affected (0.02 sec)

MariaDB [csd2204s18]> SELECT * FROM V1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> INSERT INTO V1VALUES(20,'USBport',89,2);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '20,'USBport',89,2)' at line 1
MariaDB [csd2204s18]> INSERT INTO V1 VALUES(20,'USB port',89,2);
Query OK, 1 row affected (0.06 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> delete from v1 where code=20;
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name, price from products where name LIKE '%drive';
+------------+-------+
| name       | price |
+------------+-------+
| Hard drive |   240 |
| ZIP drive  |   150 |
| DVD drive  |   180 |
| CD drive   |    90 |
+------------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE OR REPLACE VIEW V2 AS SELECT NAME, PRICE FROM PRODUCTS WHERE NAME LIKE '%DRIVE%';
Query OK, 0 rows affected (0.06 sec)

MariaDB [csd2204s18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| brand                |
| c1                   |
| c3                   |
| cart                 |
| category             |
| countries            |
| cust_mast            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| famousmovies         |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movie                |
| orders               |
| payment              |
| persons              |
| product              |
| products             |
| regions              |
| trans                |
| v1                   |
| v2                   |
+----------------------+
28 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM V2;
+------------+-------+
| NAME       | PRICE |
+------------+-------+
| Hard drive |   240 |
| ZIP drive  |   150 |
| DVD drive  |   180 |
| CD drive   |    90 |
+------------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME FROM MANU INNER JOIN PRODUCTS ON PRODUCTS.MANU=MANU.CODE;
ERROR 1054 (42S22): Unknown column 'PRODUCTS.MANU' in 'on clause'
MariaDB [csd2204s18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME FROM MANU INNER JOIN PRODUCTS ON PRODUCTS.MANUFACTURER=MANU.CODE;
+------+-----------------+-------------------+
| CODE | NAME            | NAME              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   20 | USB port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, "Products", MANU.NAME "Manufacturer" FROM MANU INNER JOIN PRODUCTS ON PRODUCTS.MANUFACTURER=MANU.CODE;
+------+-----------------+----------+-------------------+
| CODE | NAME            | Products | Manufacturer      |
+------+-----------------+----------+-------------------+
|    1 | Hard drive      | Products | Fujitsu           |
|    2 | Memory          | Products | Winchester        |
|    3 | ZIP drive       | Products | Iomega            |
|    4 | Floppy disk     | Products | Winchester        |
|    5 | Monitor         | Products | Sony              |
|    6 | DVD drive       | Products | Creative Labs     |
|    7 | CD drive        | Products | Creative Labs     |
|    8 | Printer         | Products | Hewlett-Packard   |
|    9 | Toner cartridge | Products | Hewlett-Packard   |
|   10 | DVD burner      | Products | Creative Labs     |
|   11 | Printer         | Products | moxDroid Labs Inc |
|   12 | Toner cartridge | Products | moxDroid Labs Inc |
|   13 | DVD burner      | Products | moxDroid Labs Inc |
|   20 | USB port        | Products | Creative Labs     |
+------+-----------------+----------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME "Products", MANU.NAME "Manufacturer" FROM MANU INNER JOIN PRODUCTS ON PRODUCTS.MANUFACTURER=MANU.CODE;
+------+-----------------+-------------------+
| CODE | Products        | Manufacturer      |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   20 | USB port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE OR REPLACE VIEW V3 AS SELECT PRODUCTS.CODE, PRODUCTS.NAME "Products", MANU.NAME "Manufacturer" FROM MANU INNER JOIN PRODUCTS ON PRODUCTS.MANUFACTURER=MANU.CODE;
Query OK, 0 rows affected (0.03 sec)

MariaDB [csd2204s18]> SELECT * FROM V3;
+------+-----------------+-------------------+
| CODE | Products        | Manufacturer      |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   20 | USB port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE SALARY> ALL(SELECT AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);
+------------+-----------+----------+
| FIRST_NAME | LAST_NAME | SALARY   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> CREATE OR REPLAVE VIEW V4 AS SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE SALARY> ALL(SELECT AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'REPLAVE VIEW V4 AS SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE SAL' at line 1
MariaDB [csd2204s18]> CREATE OR REPLACE VIEW V4 AS SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE SALARY> ALL(SELECT AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);
Query OK, 0 rows affected (0.01 sec)

MariaDB [csd2204s18]> SELECT * FROM V4;
+------------+-----------+----------+
| FIRST_NAME | LAST_NAME | SALARY   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> DROP VIEW V5;
ERROR 1051 (42S02): Unknown table 'csd2204s18.v5'
MariaDB [csd2204s18]> DROP VIEW IF EXISTS V5;
Query OK, 0 rows affected, 1 warning (0.00 sec)

MariaDB [csd2204s18]> DROP VIEW IF EXISTS V1;
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| brand                |
| c1                   |
| c3                   |
| cart                 |
| category             |
| countries            |
| cust_mast            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| famousmovies         |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movie                |
| orders               |
| payment              |
| persons              |
| product              |
| products             |
| regions              |
| trans                |
| v2                   |
| v3                   |
| v4                   |
+----------------------+
29 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM MANU;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM PRODUCTS;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT PRODUCTS.NAME "PRODUCTS", PRODUCTS.MANUFACTURER, MANU.NAME "MANUFACTURER NAME"FROM MANU INNER JOIN PRODUCTS ON PRODUCTS.CODE=MANU.CODE;
+-----------------+--------------+-------------------+
| PRODUCTS        | MANUFACTURER | MANUFACTURER NAME |
+-----------------+--------------+-------------------+
| Hard drive      |            5 | Sony              |
| Memory          |            6 | Creative Labs     |
| ZIP drive       |            4 | Hewlett-Packard   |
| Floppy disk     |            6 | Iomega            |
| Monitor         |            1 | Fujitsu           |
| DVD drive       |            2 | Winchester        |
| CD drive        |            2 | moxDroid Labs Inc |
| Printer         |            3 | Dell              |
| Toner cartridge |            3 | Bell Labs         |
+-----------------+--------------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE OR REPLACE VIEW V1 AS SELECT PRODUCTS.NAME "PRODUCTS", PRODUCTS.MANUFACTURER, MANU.NAME "MANUFACTURER NAME"FROM MANU INNER JOIN PRODUCTS ON PRODUCTS.CODE=MANU.CODE;
Query OK, 0 rows affected (0.03 sec)

MariaDB [csd2204s18]> SELECT * FROM V1;
+-----------------+--------------+-------------------+
| PRODUCTS        | MANUFACTURER | MANUFACTURER NAME |
+-----------------+--------------+-------------------+
| Hard drive      |            5 | Sony              |
| Memory          |            6 | Creative Labs     |
| ZIP drive       |            4 | Hewlett-Packard   |
| Floppy disk     |            6 | Iomega            |
| Monitor         |            1 | Fujitsu           |
| DVD drive       |            2 | Winchester        |
| CD drive        |            2 | moxDroid Labs Inc |
| Printer         |            3 | Dell              |
| Toner cartridge |            3 | Bell Labs         |
+-----------------+--------------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> INSERT INTO V1 VALUES('Hard disk',4,'HP');
ERROR 1394 (HY000): Can not insert into join view 'csd2204s18.v1' without fields list
MariaDB [csd2204s18]> INSERT INTO V1 VALUES('Hard disk',4,'HP') AS SELECT PRODUCTS.NAME "PRODUCTS", PRODUCTS.MANUFACTURER, MANU.NAME "MANUFACTURER NAME"FROM MANU INNER JOIN PRODUCTS ON PRODUCTS.CODE=MANU.CODE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'AS SELECT PRODUCTS.NAME "PRODUCTS", PRODUCTS.MANUFACTURER, MANU.NAME "MANUFACTUR' at line 1
MariaDB [csd2204s18]> CREATE OR REPLACE VIEW V6 AS SELECT COUNT(*), P.NAME "PRODUCTS", P.MANUFACTURER, M.NAME "MANUFACTURER NAME" FROM MANU M INNER JOIN PRODUCTS P ON PRODUCTS.CODE=MANU.CODE;
ERROR 1054 (42S22): Unknown column 'PRODUCTS.CODE' in 'on clause'
MariaDB [csd2204s18]> CREATE OR REPLACE VIEW V6 AS SELECT COUNT(*), P.NAME "PRODUCTS", P.MANUFACTURER, M.NAME "MANUFACTURER NAME" FROM MANU M INNER JOIN PRODUCTS P ON P.CODE=M.CODE;
Query OK, 0 rows affected (0.02 sec)

MariaDB [csd2204s18]> SELECT * FROM V6;
+----------+------------+--------------+-------------------+
| COUNT(*) | PRODUCTS   | MANUFACTURER | MANUFACTURER NAME |
+----------+------------+--------------+-------------------+
|        9 | Hard drive |            5 | Sony              |
+----------+------------+--------------+-------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> CREATE OR REPLACE VIEW V6 AS SELECT COUNT(*), P.NAME "PRODUCTS", P.MANUFACTURER, M.NAME "MANUFACTURER NAME" FROM MANU M INNER JOIN PRODUCTS P ON P.CODE=M.CODE GROUP BY MANUFACTURER;
Query OK, 0 rows affected (0.01 sec)

MariaDB [csd2204s18]> SELECT * FROM V6;
+----------+------------+--------------+-------------------+
| COUNT(*) | PRODUCTS   | MANUFACTURER | MANUFACTURER NAME |
+----------+------------+--------------+-------------------+
|        1 | Monitor    |            1 | Fujitsu           |
|        2 | DVD drive  |            2 | Winchester        |
|        2 | Printer    |            3 | Dell              |
|        1 | ZIP drive  |            4 | Hewlett-Packard   |
|        1 | Hard drive |            5 | Sony              |
|        2 | Memory     |            6 | Creative Labs     |
+----------+------------+--------------+-------------------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT PRODUCTS.NAME "PRODUCTS", PRODUCTS.MANUFACTURER, MANU.NAME "MANUFACTURER NAME"FROM PRODUCTS INNER JOIN MANU ON PRODUCTS.CODE=MANU.CODE;
+-----------------+--------------+-------------------+
| PRODUCTS        | MANUFACTURER | MANUFACTURER NAME |
+-----------------+--------------+-------------------+
| Hard drive      |            5 | Sony              |
| Memory          |            6 | Creative Labs     |
| ZIP drive       |            4 | Hewlett-Packard   |
| Floppy disk     |            6 | Iomega            |
| Monitor         |            1 | Fujitsu           |
| DVD drive       |            2 | Winchester        |
| CD drive        |            2 | moxDroid Labs Inc |
| Printer         |            3 | Dell              |
| Toner cartridge |            3 | Bell Labs         |
+-----------------+--------------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT PRODUCTS.NAME "PRODUCTS", PRODUCTS.MANUFACTURER, MANU.NAME "MANUFACTURER NAME"FROM PRODUCTS LEFT JOIN MANU ON PRODUCTS.CODE=MANU.CODE UNION SELECT PRODUCTS.NAME "PRODUCTS", PRODUCTS.MANUFACTURER, MANU.NAME "MANUFACTURER NAME" FROM MANU RIGHT JOIN PRODUCTS ON PRODUCTS.CODE=MANU.CODE;
+-----------------+--------------+-------------------+
| PRODUCTS        | MANUFACTURER | MANUFACTURER NAME |
+-----------------+--------------+-------------------+
| Hard drive      |            5 | Sony              |
| Memory          |            6 | Creative Labs     |
| ZIP drive       |            4 | Hewlett-Packard   |
| Floppy disk     |            6 | Iomega            |
| Monitor         |            1 | Fujitsu           |
| DVD drive       |            2 | Winchester        |
| CD drive        |            2 | moxDroid Labs Inc |
| Printer         |            3 | Dell              |
| Toner cartridge |            3 | Bell Labs         |
| DVD burner      |            2 | NULL              |
| Printer         |            7 | NULL              |
| Toner cartridge |            7 | NULL              |
| DVD burner      |            7 | NULL              |
| USB port        |            2 | NULL              |
+-----------------+--------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT * FROM PRODUCTS;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT P1.CODE, P1.NAME, P2.NAME FROM PRODUCTS P1, PRODUCTS P2 WHERE P1.CODE<>P2.CODE;
+------+-----------------+-----------------+
| CODE | NAME            | NAME            |
+------+-----------------+-----------------+
|    2 | Memory          | Hard drive      |
|    3 | ZIP drive       | Hard drive      |
|    4 | Floppy disk     | Hard drive      |
|    5 | Monitor         | Hard drive      |
|    6 | DVD drive       | Hard drive      |
|    7 | CD drive        | Hard drive      |
|    8 | Printer         | Hard drive      |
|    9 | Toner cartridge | Hard drive      |
|   10 | DVD burner      | Hard drive      |
|   11 | Printer         | Hard drive      |
|   12 | Toner cartridge | Hard drive      |
|   13 | DVD burner      | Hard drive      |
|   20 | USB port        | Hard drive      |
|    1 | Hard drive      | Memory          |
|    3 | ZIP drive       | Memory          |
|    4 | Floppy disk     | Memory          |
|    5 | Monitor         | Memory          |
|    6 | DVD drive       | Memory          |
|    7 | CD drive        | Memory          |
|    8 | Printer         | Memory          |
|    9 | Toner cartridge | Memory          |
|   10 | DVD burner      | Memory          |
|   11 | Printer         | Memory          |
|   12 | Toner cartridge | Memory          |
|   13 | DVD burner      | Memory          |
|   20 | USB port        | Memory          |
|    1 | Hard drive      | ZIP drive       |
|    2 | Memory          | ZIP drive       |
|    4 | Floppy disk     | ZIP drive       |
|    5 | Monitor         | ZIP drive       |
|    6 | DVD drive       | ZIP drive       |
|    7 | CD drive        | ZIP drive       |
|    8 | Printer         | ZIP drive       |
|    9 | Toner cartridge | ZIP drive       |
|   10 | DVD burner      | ZIP drive       |
|   11 | Printer         | ZIP drive       |
|   12 | Toner cartridge | ZIP drive       |
|   13 | DVD burner      | ZIP drive       |
|   20 | USB port        | ZIP drive       |
|    1 | Hard drive      | Floppy disk     |
|    2 | Memory          | Floppy disk     |
|    3 | ZIP drive       | Floppy disk     |
|    5 | Monitor         | Floppy disk     |
|    6 | DVD drive       | Floppy disk     |
|    7 | CD drive        | Floppy disk     |
|    8 | Printer         | Floppy disk     |
|    9 | Toner cartridge | Floppy disk     |
|   10 | DVD burner      | Floppy disk     |
|   11 | Printer         | Floppy disk     |
|   12 | Toner cartridge | Floppy disk     |
|   13 | DVD burner      | Floppy disk     |
|   20 | USB port        | Floppy disk     |
|    1 | Hard drive      | Monitor         |
|    2 | Memory          | Monitor         |
|    3 | ZIP drive       | Monitor         |
|    4 | Floppy disk     | Monitor         |
|    6 | DVD drive       | Monitor         |
|    7 | CD drive        | Monitor         |
|    8 | Printer         | Monitor         |
|    9 | Toner cartridge | Monitor         |
|   10 | DVD burner      | Monitor         |
|   11 | Printer         | Monitor         |
|   12 | Toner cartridge | Monitor         |
|   13 | DVD burner      | Monitor         |
|   20 | USB port        | Monitor         |
|    1 | Hard drive      | DVD drive       |
|    2 | Memory          | DVD drive       |
|    3 | ZIP drive       | DVD drive       |
|    4 | Floppy disk     | DVD drive       |
|    5 | Monitor         | DVD drive       |
|    7 | CD drive        | DVD drive       |
|    8 | Printer         | DVD drive       |
|    9 | Toner cartridge | DVD drive       |
|   10 | DVD burner      | DVD drive       |
|   11 | Printer         | DVD drive       |
|   12 | Toner cartridge | DVD drive       |
|   13 | DVD burner      | DVD drive       |
|   20 | USB port        | DVD drive       |
|    1 | Hard drive      | CD drive        |
|    2 | Memory          | CD drive        |
|    3 | ZIP drive       | CD drive        |
|    4 | Floppy disk     | CD drive        |
|    5 | Monitor         | CD drive        |
|    6 | DVD drive       | CD drive        |
|    8 | Printer         | CD drive        |
|    9 | Toner cartridge | CD drive        |
|   10 | DVD burner      | CD drive        |
|   11 | Printer         | CD drive        |
|   12 | Toner cartridge | CD drive        |
|   13 | DVD burner      | CD drive        |
|   20 | USB port        | CD drive        |
|    1 | Hard drive      | Printer         |
|    2 | Memory          | Printer         |
|    3 | ZIP drive       | Printer         |
|    4 | Floppy disk     | Printer         |
|    5 | Monitor         | Printer         |
|    6 | DVD drive       | Printer         |
|    7 | CD drive        | Printer         |
|    9 | Toner cartridge | Printer         |
|   10 | DVD burner      | Printer         |
|   11 | Printer         | Printer         |
|   12 | Toner cartridge | Printer         |
|   13 | DVD burner      | Printer         |
|   20 | USB port        | Printer         |
|    1 | Hard drive      | Toner cartridge |
|    2 | Memory          | Toner cartridge |
|    3 | ZIP drive       | Toner cartridge |
|    4 | Floppy disk     | Toner cartridge |
|    5 | Monitor         | Toner cartridge |
|    6 | DVD drive       | Toner cartridge |
|    7 | CD drive        | Toner cartridge |
|    8 | Printer         | Toner cartridge |
|   10 | DVD burner      | Toner cartridge |
|   11 | Printer         | Toner cartridge |
|   12 | Toner cartridge | Toner cartridge |
|   13 | DVD burner      | Toner cartridge |
|   20 | USB port        | Toner cartridge |
|    1 | Hard drive      | DVD burner      |
|    2 | Memory          | DVD burner      |
|    3 | ZIP drive       | DVD burner      |
|    4 | Floppy disk     | DVD burner      |
|    5 | Monitor         | DVD burner      |
|    6 | DVD drive       | DVD burner      |
|    7 | CD drive        | DVD burner      |
|    8 | Printer         | DVD burner      |
|    9 | Toner cartridge | DVD burner      |
|   11 | Printer         | DVD burner      |
|   12 | Toner cartridge | DVD burner      |
|   13 | DVD burner      | DVD burner      |
|   20 | USB port        | DVD burner      |
|    1 | Hard drive      | Printer         |
|    2 | Memory          | Printer         |
|    3 | ZIP drive       | Printer         |
|    4 | Floppy disk     | Printer         |
|    5 | Monitor         | Printer         |
|    6 | DVD drive       | Printer         |
|    7 | CD drive        | Printer         |
|    8 | Printer         | Printer         |
|    9 | Toner cartridge | Printer         |
|   10 | DVD burner      | Printer         |
|   12 | Toner cartridge | Printer         |
|   13 | DVD burner      | Printer         |
|   20 | USB port        | Printer         |
|    1 | Hard drive      | Toner cartridge |
|    2 | Memory          | Toner cartridge |
|    3 | ZIP drive       | Toner cartridge |
|    4 | Floppy disk     | Toner cartridge |
|    5 | Monitor         | Toner cartridge |
|    6 | DVD drive       | Toner cartridge |
|    7 | CD drive        | Toner cartridge |
|    8 | Printer         | Toner cartridge |
|    9 | Toner cartridge | Toner cartridge |
|   10 | DVD burner      | Toner cartridge |
|   11 | Printer         | Toner cartridge |
|   13 | DVD burner      | Toner cartridge |
|   20 | USB port        | Toner cartridge |
|    1 | Hard drive      | DVD burner      |
|    2 | Memory          | DVD burner      |
|    3 | ZIP drive       | DVD burner      |
|    4 | Floppy disk     | DVD burner      |
|    5 | Monitor         | DVD burner      |
|    6 | DVD drive       | DVD burner      |
|    7 | CD drive        | DVD burner      |
|    8 | Printer         | DVD burner      |
|    9 | Toner cartridge | DVD burner      |
|   10 | DVD burner      | DVD burner      |
|   11 | Printer         | DVD burner      |
|   12 | Toner cartridge | DVD burner      |
|   20 | USB port        | DVD burner      |
|    1 | Hard drive      | USB port        |
|    2 | Memory          | USB port        |
|    3 | ZIP drive       | USB port        |
|    4 | Floppy disk     | USB port        |
|    5 | Monitor         | USB port        |
|    6 | DVD drive       | USB port        |
|    7 | CD drive        | USB port        |
|    8 | Printer         | USB port        |
|    9 | Toner cartridge | USB port        |
|   10 | DVD burner      | USB port        |
|   11 | Printer         | USB port        |
|   12 | Toner cartridge | USB port        |
|   13 | DVD burner      | USB port        |
+------+-----------------+-----------------+
182 rows in set (0.03 sec)

MariaDB [csd2204s18]> DROP VIEW IF EXISTS V6;
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| brand                |
| c1                   |
| c3                   |
| cart                 |
| category             |
| countries            |
| cust_mast            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| famousmovies         |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movie                |
| orders               |
| payment              |
| persons              |
| product              |
| products             |
| regions              |
| trans                |
| v1                   |
| v2                   |
| v3                   |
| v4                   |
+----------------------+
30 rows in set (0.00 sec)

MariaDB [csd2204s18]> CREATE OR REPLACE VIEW V6 AS SELECT P1.CODE, P1.NAME, P2.NAME FROM PRODUCTS P1, PRODUCTS P2 WHERE P1.CODE<>P2.CODE;
ERROR 1060 (42S21): Duplicate column name 'NAME'
MariaDB [csd2204s18]> CREATE OR REPLACE VIEW V6 AS SELECT P1.CODE, P1.NAME "name", P2.NAME "names" FROM PRODUCTS P1, PRODUCTS P2 WHERE P1.CODE<>P2.CODE;
Query OK, 0 rows affected (0.01 sec)

MariaDB [csd2204s18]> select * from v6;
+------+-----------------+-----------------+
| CODE | name            | names           |
+------+-----------------+-----------------+
|    2 | Memory          | Hard drive      |
|    3 | ZIP drive       | Hard drive      |
|    4 | Floppy disk     | Hard drive      |
|    5 | Monitor         | Hard drive      |
|    6 | DVD drive       | Hard drive      |
|    7 | CD drive        | Hard drive      |
|    8 | Printer         | Hard drive      |
|    9 | Toner cartridge | Hard drive      |
|   10 | DVD burner      | Hard drive      |
|   11 | Printer         | Hard drive      |
|   12 | Toner cartridge | Hard drive      |
|   13 | DVD burner      | Hard drive      |
|   20 | USB port        | Hard drive      |
|    1 | Hard drive      | Memory          |
|    3 | ZIP drive       | Memory          |
|    4 | Floppy disk     | Memory          |
|    5 | Monitor         | Memory          |
|    6 | DVD drive       | Memory          |
|    7 | CD drive        | Memory          |
|    8 | Printer         | Memory          |
|    9 | Toner cartridge | Memory          |
|   10 | DVD burner      | Memory          |
|   11 | Printer         | Memory          |
|   12 | Toner cartridge | Memory          |
|   13 | DVD burner      | Memory          |
|   20 | USB port        | Memory          |
|    1 | Hard drive      | ZIP drive       |
|    2 | Memory          | ZIP drive       |
|    4 | Floppy disk     | ZIP drive       |
|    5 | Monitor         | ZIP drive       |
|    6 | DVD drive       | ZIP drive       |
|    7 | CD drive        | ZIP drive       |
|    8 | Printer         | ZIP drive       |
|    9 | Toner cartridge | ZIP drive       |
|   10 | DVD burner      | ZIP drive       |
|   11 | Printer         | ZIP drive       |
|   12 | Toner cartridge | ZIP drive       |
|   13 | DVD burner      | ZIP drive       |
|   20 | USB port        | ZIP drive       |
|    1 | Hard drive      | Floppy disk     |
|    2 | Memory          | Floppy disk     |
|    3 | ZIP drive       | Floppy disk     |
|    5 | Monitor         | Floppy disk     |
|    6 | DVD drive       | Floppy disk     |
|    7 | CD drive        | Floppy disk     |
|    8 | Printer         | Floppy disk     |
|    9 | Toner cartridge | Floppy disk     |
|   10 | DVD burner      | Floppy disk     |
|   11 | Printer         | Floppy disk     |
|   12 | Toner cartridge | Floppy disk     |
|   13 | DVD burner      | Floppy disk     |
|   20 | USB port        | Floppy disk     |
|    1 | Hard drive      | Monitor         |
|    2 | Memory          | Monitor         |
|    3 | ZIP drive       | Monitor         |
|    4 | Floppy disk     | Monitor         |
|    6 | DVD drive       | Monitor         |
|    7 | CD drive        | Monitor         |
|    8 | Printer         | Monitor         |
|    9 | Toner cartridge | Monitor         |
|   10 | DVD burner      | Monitor         |
|   11 | Printer         | Monitor         |
|   12 | Toner cartridge | Monitor         |
|   13 | DVD burner      | Monitor         |
|   20 | USB port        | Monitor         |
|    1 | Hard drive      | DVD drive       |
|    2 | Memory          | DVD drive       |
|    3 | ZIP drive       | DVD drive       |
|    4 | Floppy disk     | DVD drive       |
|    5 | Monitor         | DVD drive       |
|    7 | CD drive        | DVD drive       |
|    8 | Printer         | DVD drive       |
|    9 | Toner cartridge | DVD drive       |
|   10 | DVD burner      | DVD drive       |
|   11 | Printer         | DVD drive       |
|   12 | Toner cartridge | DVD drive       |
|   13 | DVD burner      | DVD drive       |
|   20 | USB port        | DVD drive       |
|    1 | Hard drive      | CD drive        |
|    2 | Memory          | CD drive        |
|    3 | ZIP drive       | CD drive        |
|    4 | Floppy disk     | CD drive        |
|    5 | Monitor         | CD drive        |
|    6 | DVD drive       | CD drive        |
|    8 | Printer         | CD drive        |
|    9 | Toner cartridge | CD drive        |
|   10 | DVD burner      | CD drive        |
|   11 | Printer         | CD drive        |
|   12 | Toner cartridge | CD drive        |
|   13 | DVD burner      | CD drive        |
|   20 | USB port        | CD drive        |
|    1 | Hard drive      | Printer         |
|    2 | Memory          | Printer         |
|    3 | ZIP drive       | Printer         |
|    4 | Floppy disk     | Printer         |
|    5 | Monitor         | Printer         |
|    6 | DVD drive       | Printer         |
|    7 | CD drive        | Printer         |
|    9 | Toner cartridge | Printer         |
|   10 | DVD burner      | Printer         |
|   11 | Printer         | Printer         |
|   12 | Toner cartridge | Printer         |
|   13 | DVD burner      | Printer         |
|   20 | USB port        | Printer         |
|    1 | Hard drive      | Toner cartridge |
|    2 | Memory          | Toner cartridge |
|    3 | ZIP drive       | Toner cartridge |
|    4 | Floppy disk     | Toner cartridge |
|    5 | Monitor         | Toner cartridge |
|    6 | DVD drive       | Toner cartridge |
|    7 | CD drive        | Toner cartridge |
|    8 | Printer         | Toner cartridge |
|   10 | DVD burner      | Toner cartridge |
|   11 | Printer         | Toner cartridge |
|   12 | Toner cartridge | Toner cartridge |
|   13 | DVD burner      | Toner cartridge |
|   20 | USB port        | Toner cartridge |
|    1 | Hard drive      | DVD burner      |
|    2 | Memory          | DVD burner      |
|    3 | ZIP drive       | DVD burner      |
|    4 | Floppy disk     | DVD burner      |
|    5 | Monitor         | DVD burner      |
|    6 | DVD drive       | DVD burner      |
|    7 | CD drive        | DVD burner      |
|    8 | Printer         | DVD burner      |
|    9 | Toner cartridge | DVD burner      |
|   11 | Printer         | DVD burner      |
|   12 | Toner cartridge | DVD burner      |
|   13 | DVD burner      | DVD burner      |
|   20 | USB port        | DVD burner      |
|    1 | Hard drive      | Printer         |
|    2 | Memory          | Printer         |
|    3 | ZIP drive       | Printer         |
|    4 | Floppy disk     | Printer         |
|    5 | Monitor         | Printer         |
|    6 | DVD drive       | Printer         |
|    7 | CD drive        | Printer         |
|    8 | Printer         | Printer         |
|    9 | Toner cartridge | Printer         |
|   10 | DVD burner      | Printer         |
|   12 | Toner cartridge | Printer         |
|   13 | DVD burner      | Printer         |
|   20 | USB port        | Printer         |
|    1 | Hard drive      | Toner cartridge |
|    2 | Memory          | Toner cartridge |
|    3 | ZIP drive       | Toner cartridge |
|    4 | Floppy disk     | Toner cartridge |
|    5 | Monitor         | Toner cartridge |
|    6 | DVD drive       | Toner cartridge |
|    7 | CD drive        | Toner cartridge |
|    8 | Printer         | Toner cartridge |
|    9 | Toner cartridge | Toner cartridge |
|   10 | DVD burner      | Toner cartridge |
|   11 | Printer         | Toner cartridge |
|   13 | DVD burner      | Toner cartridge |
|   20 | USB port        | Toner cartridge |
|    1 | Hard drive      | DVD burner      |
|    2 | Memory          | DVD burner      |
|    3 | ZIP drive       | DVD burner      |
|    4 | Floppy disk     | DVD burner      |
|    5 | Monitor         | DVD burner      |
|    6 | DVD drive       | DVD burner      |
|    7 | CD drive        | DVD burner      |
|    8 | Printer         | DVD burner      |
|    9 | Toner cartridge | DVD burner      |
|   10 | DVD burner      | DVD burner      |
|   11 | Printer         | DVD burner      |
|   12 | Toner cartridge | DVD burner      |
|   20 | USB port        | DVD burner      |
|    1 | Hard drive      | USB port        |
|    2 | Memory          | USB port        |
|    3 | ZIP drive       | USB port        |
|    4 | Floppy disk     | USB port        |
|    5 | Monitor         | USB port        |
|    6 | DVD drive       | USB port        |
|    7 | CD drive        | USB port        |
|    8 | Printer         | USB port        |
|    9 | Toner cartridge | USB port        |
|   10 | DVD burner      | USB port        |
|   11 | Printer         | USB port        |
|   12 | Toner cartridge | USB port        |
|   13 | DVD burner      | USB port        |
+------+-----------------+-----------------+
182 rows in set (0.00 sec)

MariaDB [csd2204s18]> drop view v6;
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| brand                |
| c1                   |
| c3                   |
| cart                 |
| category             |
| countries            |
| cust_mast            |
| customer             |
| departments          |
| dept                 |
| emp                  |
| employees            |
| famousmovies         |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| movie                |
| orders               |
| payment              |
| persons              |
| product              |
| products             |
| regions              |
| trans                |
| v1                   |
| v2                   |
| v3                   |
| v4                   |
+----------------------+
30 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from manufacturer;
ERROR 1146 (42S02): Table 'csd2204s18.manufacturer' doesn't exist
MariaDB [csd2204s18]> select * from manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) "no of items", products.name, products.manufacturer, manu.name from products left join manu on manu.code=product.code;
ERROR 1054 (42S22): Unknown column 'product.code' in 'on clause'
MariaDB [csd2204s18]> select count(*) "no of items", products.name, products.manufacturer, manu.name from products left join manu on manu.code=products.code;
+-------------+------------+--------------+------+
| no of items | name       | manufacturer | name |
+-------------+------------+--------------+------+
|          14 | Hard drive |            5 | Sony |
+-------------+------------+--------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) "no of items", products.name, products.manufacturer, manu.name from products left join manu on manu.code=products.code group by manufacturer;
+-------------+------------+--------------+-----------------+
| no of items | name       | manufacturer | name            |
+-------------+------------+--------------+-----------------+
|           1 | Monitor    |            1 | Fujitsu         |
|           4 | DVD drive  |            2 | Winchester      |
|           2 | Printer    |            3 | Dell            |
|           1 | ZIP drive  |            4 | Hewlett-Packard |
|           1 | Hard drive |            5 | Sony            |
|           2 | Memory     |            6 | Creative Labs   |
|           3 | Printer    |            7 | NULL            |
+-------------+------------+--------------+-----------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> create or replace view v6 as select count(*) "no of items", products.name, products.manufacturer, manu.name from products left join manu on manu.code=products.code group by manufacturer;
ERROR 1060 (42S21): Duplicate column name 'name'
MariaDB [csd2204s18]> create or replace view v6 as select count(*) "no of items", products.name "name", products.manufacturer, manu.name "names" from products left join manu on manu.code=products.code group by manufacturer;
Query OK, 0 rows affected (0.05 sec)

MariaDB [csd2204s18]> select * from v6;
+-------------+------------+--------------+-----------------+
| no of items | name       | manufacturer | names           |
+-------------+------------+--------------+-----------------+
|           1 | Monitor    |            1 | Fujitsu         |
|           4 | DVD drive  |            2 | Winchester      |
|           2 | Printer    |            3 | Dell            |
|           1 | ZIP drive  |            4 | Hewlett-Packard |
|           1 | Hard drive |            5 | Sony            |
|           2 | Memory     |            6 | Creative Labs   |
|           3 | Printer    |            7 | NULL            |
+-------------+------------+--------------+-----------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from products where manufacturer =2;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    6 | DVD drive  |   180 |            2 |
|    7 | CD drive   |    90 |            2 |
|   10 | DVD burner |   180 |            2 |
|   20 | USB port   |    89 |            2 |
+------+------------+-------+--------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> exit;
