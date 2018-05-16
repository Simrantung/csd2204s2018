MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| ac_mast              |
| c1                   |
| c3                   |
| cust_mast            |
| customer             |
| dept                 |
| emp                  |
| famousmovies         |
| manu                 |
| movie                |
| orders               |
| persons              |
| products             |
| trans                |
+----------------------+
14 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM manu;
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

MariaDB [CSD2204S18]> SELECT * FROM products;
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
13 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC manu;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| Code  | int(3)      | NO   | PRI | NULL    | auto_increment |
| Name  | varchar(50) | NO   |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC products;
+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| Code         | int(3)        | NO   | PRI | NULL    | auto_increment |
| Name         | varchar(255)  | NO   |     | NULL    |                |
| Price        | decimal(10,0) | NO   |     | NULL    |                |
| Manufacturer | int(3)        | YES  | MUL | NULL    |                |
+--------------+---------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME
    -> FROM MANU
    -> INNER JOIN PRODUCTS
    -> ON PRODUCT.CODE = MANU.CODE;
ERROR 1054 (42S22): Unknown column 'PRODUCT.CODE' in 'on clause'
MariaDB [CSD2204S18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME
    -> FROM MANU
    -> INNER JOIN PRODUCTS
    -> ON PRODUCTS.CODE = MANU.CODE;
+------+-----------------+-------------------+
| CODE | NAME            | NAME              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
+------+-----------------+-------------------+
9 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) , manufacturer
    -> FROM PRODUCTS as p
    -> INNER JOIN manu m
    -> ON m.code=p.manufacturer
    -> GROUP BY manufacturer;
+----------+--------------+
| COUNT(*) | manufacturer |
+----------+--------------+
|        1 |            1 |
|        3 |            2 |
|        2 |            3 |
|        1 |            4 |
|        1 |            5 |
|        2 |            6 |
|        3 |            7 |
+----------+--------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) , manufacturer
    -> FROM products as p
    -> INNER JOIN manu m
    -> ON m.code=p.manufacturer
    -> GROUP BY manufacturer;
+----------+--------------+
| COUNT(*) | manufacturer |
+----------+--------------+
|        1 |            1 |
|        3 |            2 |
|        2 |            3 |
|        1 |            4 |
|        1 |            5 |
|        2 |            6 |
|        3 |            7 |
+----------+--------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT manufacturer, m.name, COUNT(*) "No. of items produced" FROM products as p INNE
    -> /G
    -> |g
    -> \g
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INNE
/G
|g' at line 1
MariaDB [CSD2204S18]> SELECT COUNT(*) , manufacturer
    -> FROM products as p
    -> \g
+----------+--------------+
| COUNT(*) | manufacturer |
+----------+--------------+
|       13 |            1 |
+----------+--------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT manufacturer, m.name, COUNT(*) "No. of itmes produced" FROM products as p
    -> INNER JOIN manu m
    -> ON m.code=p.manufacturer
    -> GROUP BY manufacturer;
+--------------+-------------------+-----------------------+
| manufacturer | name              | No. of itmes produced |
+--------------+-------------------+-----------------------+
|            1 | Sony              |                     1 |
|            2 | Creative Labs     |                     3 |
|            3 | Hewlett-Packard   |                     2 |
|            4 | Iomega            |                     1 |
|            5 | Fujitsu           |                     1 |
|            6 | Winchester        |                     2 |
|            7 | moxDroid Labs Inc |                     3 |
+--------------+-------------------+-----------------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT manufacturer, m.name, COUNT(*) "No. of itmes produced" FROM products as p
    -> INNER JOIN manu m
    -> ON m.code=p.manufacturer WHERE m.code<4 GROUP BY manufacturer;
+--------------+-----------------+-----------------------+
| manufacturer | name            | No. of itmes produced |
+--------------+-----------------+-----------------------+
|            1 | Sony            |                     1 |
|            2 | Creative Labs   |                     3 |
|            3 | Hewlett-Packard |                     2 |
+--------------+-----------------+-----------------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT manufacturer, m.name, COUNT(*) "No. of itmes produced" FROM products as p
    -> INNER JOIN manu m
    -> ON m.code=p.manufacturer HAVING COUNT(*)>2 GROUP BY manufacturer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'GROUP BY manufacturer' at line 3
MariaDB [CSD2204S18]> SELECT manufacturer, m.name, COUNT(*) "No. of itmes produced" FROM products as p
    -> INNER JOIN manu m
    -> ON m.code=p.manufacturer GROUP BY manufacture HAVING COUNT(*)>2;
ERROR 1054 (42S22): Unknown column 'manufacture' in 'group statement'
MariaDB [CSD2204S18]> SELECT manufacturer, m.name, COUNT(*) "No. of itmes produced" FROM products as p
    -> INNER JOIN manu m
    -> ON m.code=p.manufacturer GROUP BY manufacturer HAVING COUNT(*)>2;
+--------------+-------------------+-----------------------+
| manufacturer | name              | No. of itmes produced |
+--------------+-------------------+-----------------------+
|            2 | Creative Labs     |                     3 |
|            7 | moxDroid Labs Inc |                     3 |
+--------------+-------------------+-----------------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT manufacturer, m.name, COUNT(*) "No. of itmes produced" FROM products as p
    -> INNER JOIN manu m
    -> ON m.code=p.manufacturer 
    -> WHERE m.code IN(2,3) GROUP BY manufacturer;
+--------------+-----------------+-----------------------+
| manufacturer | name            | No. of itmes produced |
+--------------+-----------------+-----------------------+
|            2 | Creative Labs   |                     3 |
|            3 | Hewlett-Packard |                     2 |
+--------------+-----------------+-----------------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT products.code, products.name, manu.name
    -> FROM Products
    -> LEFT JOIN products
    -> ON products.code=manu.code;
ERROR 1066 (42000): Not unique table/alias: 'products'
MariaDB [CSD2204S18]> SELECT products.code, products.name, manu.name
    -> FROM manu
    -> LEFT JOIN products
    -> ON products.code=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
+------+-----------------+-------------------+
9 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT products.code, products.name, manu.name FROM products LEFT JOIN MANU ON products.code=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
|   10 | DVD burner      | NULL              |
|   11 | Printer         | NULL              |
|   12 | Toner cartridge | NULL              |
|   13 | DVD burner      | NULL              |
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT products.code, products.name, manu.name FROM products RIGHT JOIN MANU ON products.manufacturer=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|   10 | DVD burner      | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|    3 | ZIP drive       | Iomega            |
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    4 | Floppy disk     | Winchester        |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
| NULL | NULL            | Dell              |
| NULL | NULL            | Bell Labs         |
+------+-----------------+-------------------+
15 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT products.code, products.name, manu.name FROM manu RIGHT JOIN products ON products.manufacturer=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
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
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT products.code, products.name, manu.name FROM products LEFT JOIN manu ON products.code=manu.code
    -> UNION
    -> SELECT products.code, products.name, manu.name FROM products RIGHT JOIN manu ON products.code=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
|   10 | DVD burner      | NULL              |
|   11 | Printer         | NULL              |
|   12 | Toner cartridge | NULL              |
|   13 | DVD burner      | NULL              |
+------+-----------------+-------------------+
13 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT P1.CODE, P1.NAME, P2.NAME
    -> FROM products P1, products P2
    -> WHERE P1.CODE<>P2.CODE;
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
+------+-----------------+-----------------+
156 rows in set (0.00 sec)

MariaDB [CSD2204S18]> EXIT;
