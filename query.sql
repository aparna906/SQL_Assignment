1.List all columns of Order_Item table.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM order_item;

        +----------+-------------------+-------------------+-------------+-------------------------+----------+-------------+-------------------+--------------------+
        | ORDER_ID | ORDER_ITEM_SEQ_ID | ORDER_PART_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | QUANTITY | UNIT_AMOUNT | ITEM_TYPE_ENUM_ID | PARENT_ITEM_SEQ_ID |
        +----------+-------------------+-------------------+-------------+-------------------------+----------+-------------+-------------------+--------------------+
        | 100051   | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |    16.99000 | ItemProduct       | null               |
        | 100051   | 02                | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 | ItemProduct       | null               |
        | 100051   | 03                | 02                | null        | Sales Tax               | 3.000000 |     1.33000 | ItemSalesTax      | null               |
        | 100052   | 01                | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 | ItemProduct       | null               |
        | 100052   | 02                | 01                | null        | Sales Tax               | 1.000000 |     1.33000 | ItemSalesTax      | 01                 |
        | 100061   | 01                | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |    15.99000 | ItemProduct       | null               |
        | 100061   | 02                | 02                | DEMO_UNIT_5 | Demo Product Unit Five  | 1.000000 |    55.09000 | ItemProduct       | null               |
        | 100064   | 01                | 01                | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |    12.07000 | ItemProduct       | null               |
        | 100064   | 02                | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |     6.33000 | ItemProduct       | null               |
        | 100102   | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 3.000000 |    16.99000 | ItemProduct       | null               |
        | 100102   | 02                | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 | ItemProduct       | null               |
        | 100102   | 03                | 01                | null        | Sales Tax               | 3.000000 |     2.33000 | ItemSalesTax      | 02                 |
        | 100102   | 04                | 02                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 | ItemProduct       | null               |
        | 100153   | 01                | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 | ItemProduct       | null               |
        | 100153   | 02                | 01                | null        | Sales Tax               | 1.000000 |     1.33000 | ItemSalesTax      | 01                 |
        | 100153   | 03                | 01                | DEMO_UNIT_4 | Demo Product Unit Four  | 1.000000 |    12.99000 | ItemProduct       | null               |
        | 100153   | 04                | 01                | null        | Sales Tax               | 1.000000 |     2.33000 | ItemSalesTax      | 03                 |
        | 100255   | 01                | 01                | DEMO_UNIT_4 | Demo Product Unit Four  | 3.000000 |    12.99000 | ItemProduct       | null               |
        | 100255   | 02                | 01                | null        | Sales Tax               | 3.000000 |     1.33000 | ItemSalesTax      | 01                 |
        | 100255   | 03                | 02                | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |    10.99000 | ItemProduct       | null               |
        +----------+-------------------+-------------------+-------------+-------------------------+----------+-------------+-------------------+--------------------+


2. List the person details for all females.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT FIRST_NAME,MIDDLE_NAME,LAST_NAME,BIRTH_DATE,
       EMPLOYMENT_STATUS_ENUM_ID,OCCUPATION
       FROM person
       WHERE SALUTATION = 'Ms';

       +------------+-------------+-----------+------------+---------------------------+-------------------+
       | FIRST_NAME | MIDDLE_NAME | LAST_NAME | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
       +------------+-------------+-----------+------------+---------------------------+-------------------+
       | Lily       | J           | Brown     | 1998-06-11 | EmpsPartTime              | Software Engineer |
       | John       | J           | Norvig    | 1998-06-11 | EmpsFullTime              | Software Engineer |
       +------------+-------------+-----------+------------+---------------------------+-------------------+


3.List the Order_header table contents so that the latest placed order appears in the top.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT ORDER_ID,ORDER_NAME,PLACED_DATE,APPROVED_DATE,STATUS_ID,
       CURRENCY_UOM_ID,PRODUCT_STORE_ID,SALES_CHANNEL_ENUM_ID,GRAND_TOTAL
       FROM order_header
       ORDER BY PLACED_DATE DESC;

       -------------+------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
       | ORDER_ID | ORDER_NAME   | PLACED_DATE             | APPROVED_DATE           | STATUS_ID      | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
       +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
       | 100064   | Test Order 7 | 2022-01-09 00:00:00.000 | 2022-01-10 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     48.8700 |
       | 100102   | Test Order 3 | 2021-04-17 00:00:00.000 | 2021-04-21 00:00:00.000 | OrderCompleted | USD             | OMS_DEFAULT_STORE | ScWeb                 |    129.9200 |
       | 100153   | Test Order 4 | 2020-04-19 00:00:00.000 | 2020-04-21 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     31.6400 |
       | 100051   | Test Order 1 | 2020-04-17 00:00:00.000 | 2020-04-19 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     77.9500 |
       | 100052   | Test Order 2 | 2020-04-17 00:00:00.000 | 2020-05-18 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     16.3200 |
       | 100255   | Test Order 5 | 2020-03-17 00:00:00.000 | 2020-03-21 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     75.9300 |
       | 100061   | Test Order 6 | 2019-04-24 00:00:00.000 | 2019-04-28 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     87.0700 |
       +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+

4.List the Person details with MarsMarried marital status.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM person
       WHERE MARITAL_STATUS_ENUM_ID ='MarsMarried';

      +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+----------------+
      | PARTY_ID  | SALUTATION | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | MARITAL_STATUS_ENUM_ID | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION     |
      +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+----------------+
      | CustDemo2 | Mr         | Jack       | John        | Smith     | M      | 1999-09-14 | MarsMarried            | EmpsFullTime              | Doctor         |
      | CustDemo5 | Mr         | Charlie    | Jack        | William   | M      | 1992-04-22 | MarsMarried            | EmpsSelf                  | Architect      |
      | CustDemo6 | Mr         | James      | W           | Evans     | M      | 1993-05-20 | MarsMarried            | EmpsFullTime              | Civil Engineer |
      +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+----------------+


5.Output the count of order_parts for each shipment_method_enum_id.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT shipment_method_enum_id,COUNT(*)
       FROM  order_part
       GROUP BY shipment_method_enum_id;

     +-------------------------+----------+
     | shipment_method_enum_id | COUNT(*) |
     +-------------------------+----------+
     | ShMthGround             |        7 |
     | ShMthNextDay            |        5 |
     +-------------------------+----------+



6.List the Order_header details with grand_total greater than 50.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM order_header
       WHERE GRAND_TOTAL > 50;

      +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
      | ORDER_ID | ORDER_NAME   | PLACED_DATE             | APPROVED_DATE           | STATUS_ID      | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
      +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
      | 100051   | Test Order 1 | 2020-04-17 00:00:00.000 | 2020-04-19 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     77.9500 |
      | 100061   | Test Order 6 | 2019-04-24 00:00:00.000 | 2019-04-28 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     87.0700 |
      | 100102   | Test Order 3 | 2021-04-17 00:00:00.000 | 2021-04-21 00:00:00.000 | OrderCompleted | USD             | OMS_DEFAULT_STORE | ScWeb                 |    129.9200 |
      | 100255   | Test Order 5 | 2020-03-17 00:00:00.000 | 2020-03-21 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     75.9300 |
      +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+


7.List the Person details who have not placed any orders.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM person
       WHERE PARTY_ID
       NOT IN (SELECT CUSTOMER_PARTY_ID FROM order_part);

       +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+------------+
       | PARTY_ID  | SALUTATION | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | MARITAL_STATUS_ENUM_ID | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION |
       +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+------------+
       | CustDemo2 | Mr         | Jack       | John        | Smith     | M      | 1999-09-14 | MarsMarried            | EmpsFullTime              | Doctor     |
       +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+------------+


8.List the Person details whose first name starts with ‘J’ and third character is ’h’.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM person
       WHERE FIRST_NAME LIKE 'j%'
       AND FIRST_NAME LIKE '__h%';
      +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+-------------------+
      | PARTY_ID  | SALUTATION | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | MARITAL_STATUS_ENUM_ID | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
      +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+-------------------+
      | CustDemo4 | Ms         | John       | J           | Norvig    | F      | 1998-06-11 | MarsSingle             | EmpsFullTime              | Software Engineer |
      +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+-------------------+


9.List all Order Item details for the order with orderId 100102 and orderPartSeqId 01.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM order_item
       WHERE ORDER_ID = 100102
       AND ORDER_PART_SEQ_ID = 01;

      +----------+-------------------+-------------------+-------------+-----------------------+----------+-------------+-------------------+--------------------+
      | ORDER_ID | ORDER_ITEM_SEQ_ID | ORDER_PART_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION      | QUANTITY | UNIT_AMOUNT | ITEM_TYPE_ENUM_ID | PARENT_ITEM_SEQ_ID |
      +----------+-------------------+-------------------+-------------+-----------------------+----------+-------------+-------------------+--------------------+
      | 100102   | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One | 3.000000 |    16.99000 | ItemProduct       | null               |
      | 100102   | 02                | 01                | DEMO_UNIT_2 | Demo Product Unit Two | 3.000000 |    18.99000 | ItemProduct       | null               |
      | 100102   | 03                | 01                | null        | Sales Tax             | 3.000000 |     2.33000 | ItemSalesTax      | 02                 |
      +----------+-------------------+-------------------+-------------+-----------------------+----------+-------------+-------------------+--------------------+

10.List the Order_Item details for only those products for which chargeShipping is set to "Y".
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query : SELECT ORDER_ID,ORDER_ITEM_SEQ_ID,ORDER_PART_SEQ_ID,ITEM_DESCRIPTION,QUANTITY,
        UNIT_AMOUNT,ITEM_TYPE_ENUM_ID,PARENT_ITEM_SEQ_ID,CHARGE_SHIPPING
        FROM product as p1,order_item as o1
        WHERE p1.PRODUCT_ID = o1.PRODUCT_ID
        AND CHARGE_SHIPPING = 'Y';

        +----------+-------------------+-------------------+-------------------------+----------+-------------------+--------------------+-----------------+
        | ORDER_ID | ORDER_ITEM_SEQ_ID | ORDER_PART_SEQ_ID | ITEM_DESCRIPTION        | QUANTITY | ITEM_TYPE_ENUM_ID | PARENT_ITEM_SEQ_ID | CHARGE_SHIPPING |
        +----------+-------------------+-------------------+-------------------------+----------+-------------------+--------------------+-----------------+
        | 100051   | 02                | 02                | Demo Product Unit Two   | 3.000000 |          18.99000 | null               | Y               |
        | 100061   | 01                | 01                | Demo Product Unit Two   | 2.000000 |          15.99000 | NULL               | Y               |
        | 100064   | 02                | 02                | Demo Product Unit Two   | 2.000000 |           6.33000 | NULL               | Y               |
        | 100102   | 02                | 01                | Demo Product Unit Two   | 3.000000 |          18.99000 | NULL               | Y               |
        | 100052   | 01                | 01                | Demo Product Unit Three | 1.000000 |          14.99000 | null               | Y               |
        | 100102   | 04                | 02                | Demo Product Unit Three | 1.000000 |          14.99000 | NULL               | Y               |
        | 100153   | 01                | 01                | Demo Product Unit Three | 1.000000 |          14.99000 | NULL               | Y               |
        | 100153   | 03                | 01                | Demo Product Unit Four  | 1.000000 |          12.99000 | NULL               | Y               |
        | 100255   | 01                | 01                | Demo Product Unit Four  | 3.000000 |          12.99000 | NULL               | Y               |
        | 100061   | 02                | 02                | Demo Product Unit Five  | 1.000000 |          55.09000 | NULL               | Y               |
        | 100064   | 01                | 01                | Demo Product Unit Five  | 3.000000 |          12.07000 | NULL               | Y               |
        | 100255   | 03                | 02                | Demo Product Unit Five  | 3.000000 |          10.99000 | NULL               | Y               |
        +----------+-------------------+-------------------+-------------------------+----------+-------------------+--------------------+-----------------+


11.Find order parts with part total less than equals to 20.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM order_part
       WHERE PART_TOTAL <= 20;
      +----------+-------------------+-----------+----------------+-----------------+-------------------+------------+-------------+-------------------------+
      | ORDER_ID | ORDER_PART_SEQ_ID | PART_NAME | STATUS_ID      | VENDOR_PARTY_ID | CUSTOMER_PARTY_ID | PART_TOTAL | FACILITY_ID | SHIPMENT_METHOD_ENUM_ID |
      +----------+-------------------+-----------+----------------+-----------------+-------------------+------------+-------------+-------------------------+
      | 100051   | 01                | #101      | OrderApproved  | OMS_VENDOR      | CustDemo1         |    16.9900 | ZIRET_WH    | ShMthGround             |
      | 100052   | 01                | #103      | OrderApproved  | OMS_VENDOR      | CustDemo1         |    16.3200 | ZIRET_WH    | ShMthNextDay            |
      | 100064   | 02                | #106      | OrderApproved  | OMS_VENDOR      | CustDemo6         |    12.6600 | ZIRET_WH    | ShMthNextDay            |
      | 100102   | 02                | #105      | OrderCompleted | OMS_VENDOR      | CustDemo3         |    14.9900 | ZIRET_WH_2  | ShMthGround             |
      +----------+-------------------+-----------+----------------+-----------------+-------------------+------------+-------------+-------------------------+


12.List the Person details whose employment status is either EmpsSelf or EmpsFullTime without using the OR operator.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM person
       WHERE EMPLOYMENT_STATUS_ENUM_ID
       IN ('EmpsFullTime','EmpsSelf');

      +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+-------------------+
      | PARTY_ID  | SALUTATION | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | MARITAL_STATUS_ENUM_ID | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
      +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+-------------------+
      | CustDemo1 | Mr         | Joe        | Q           | Public    | M      | 1999-06-15 | MarsSingle             | EmpsFullTime              | Software Engineer |
      | CustDemo2 | Mr         | Jack       | John        | Smith     | M      | 1999-09-14 | MarsMarried            | EmpsFullTime              | Doctor            |
      | CustDemo4 | Ms         | John       | J           | Norvig    | F      | 1998-06-11 | MarsSingle             | EmpsFullTime              | Software Engineer |
      | CustDemo5 | Mr         | Charlie    | Jack        | William   | M      | 1992-04-22 | MarsMarried            | EmpsSelf                  | Architect         |
      | CustDemo6 | Mr         | James      | W           | Evans     | M      | 1993-05-20 | MarsMarried            | EmpsFullTime              | Civil Engineer    |
      +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+-------------------+


13.Find the Order details assigned to the facility with ZIRET_WH value.
Output the below fields for this query:
orderId
orderPartSeqId
facilityId
partName
customerPartyId
productId
itemDescription
quantity
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT  DISTINCT T1.ORDER_ID,T1.ORDER_PART_SEQ_ID,T1.FACILITY_ID,T1.PART_NAME,T1.CUSTOMER_PARTY_ID,T2.PRODUCT_ID,
       T2.ITEM_DESCRIPTION,T2.QUANTITY
       FROM order_part AS T1
       INNER JOIN order_item AS T2
       ON T1.ORDER_ID = T2.ORDER_ID
       AND FACILITY_ID = 'ZIRET_WH' ;

      +----------+-------------------+-------------+-----------+-------------------+-------------+-------------------------+----------+
      | ORDER_ID | ORDER_PART_SEQ_ID | FACILITY_ID | PART_NAME | CUSTOMER_PARTY_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | QUANTITY |
      +----------+-------------------+-------------+-----------+-------------------+-------------+-------------------------+----------+
      | 100051   | 01                | ZIRET_WH    | #101      | CustDemo1         | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |
      | 100051   | 01                | ZIRET_WH    | #101      | CustDemo1         | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |
      | 100051   | 01                | ZIRET_WH    | #101      | CustDemo1         | NULL        | Sales Tax               | 3.000000 |
      | 100052   | 01                | ZIRET_WH    | #103      | CustDemo1         | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |
      | 100052   | 01                | ZIRET_WH    | #103      | CustDemo1         | NULL        | Sales Tax               | 1.000000 |
      | 100061   | 01                | ZIRET_WH    | #101      | CustDemo6         | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |
      | 100061   | 01                | ZIRET_WH    | #101      | CustDemo6         | DEMO_UNIT_5 | Demo Product Unit Five  | 1.000000 |
      | 100064   | 02                | ZIRET_WH    | #106      | CustDemo6         | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |
      | 100064   | 02                | ZIRET_WH    | #106      | CustDemo6         | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |
      | 100102   | 01                | ZIRET_WH    | #104      | CustDemo3         | DEMO_UNIT_1 | Demo Product Unit One   | 3.000000 |
      | 100102   | 01                | ZIRET_WH    | #104      | CustDemo3         | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |
      | 100102   | 01                | ZIRET_WH    | #104      | CustDemo3         | NULL        | Salesa Tax              | 3.000000 |
      | 100102   | 01                | ZIRET_WH    | #104      | CustDemo3         | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |
      | 100153   | 01                | ZIRET_WH    | #106      | CustDemo4         | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |
      | 100153   | 01                | ZIRET_WH    | #106      | CustDemo4         | NULL        | Sales Tax               | 1.000000 |
      | 100153   | 01                | ZIRET_WH    | #106      | CustDemo4         | DEMO_UNIT_4 | Demo Product Unit Four  | 1.000000 |
      | 100153   | 01                | ZIRET_WH    | #106      | CustDemo4         | NULL        | Sales Tax               | 1.000000 |
      | 100255   | 01                | ZIRET_WH    | #107      | CustDemo5         | DEMO_UNIT_4 | Demo Product Unit Four  | 3.000000 |
      | 100255   | 01                | ZIRET_WH    | #107      | CustDemo5         | NULL        | Sales Tax               | 3.000000 |
      | 100255   | 01                | ZIRET_WH    | #107      | CustDemo5         | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |
      +----------+-------------------+-------------+-----------+-------------------+-------------+-------------------------+----------+



14.Output the sum of the grandTotal from Order Header table for each placed date.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT PLACED_DATE, SUM(GRAND_TOTAL)
       FROM order_header
       GROUP BY PLACED_DATE;
      +-------------------------+------------------+
      | PLACED_DATE             | SUM(GRAND_TOTAL) |
      +-------------------------+------------------+
      | 2020-04-17 00:00:00.000 |          94.2700 |
      | 2019-04-24 00:00:00.000 |          87.0700 |
      | 2022-01-09 00:00:00.000 |          48.8700 |
      | 2021-04-17 00:00:00.000 |         129.9200 |
      | 2020-04-19 00:00:00.000 |          31.6400 |
      | 2020-03-17 00:00:00.000 |          75.9300 |
      +-------------------------+------------------+


15.List the Order_header records where grand total is greater than at least one of the orders placed on 2020-04-17.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM order_header WHERE GRAND_TOTAL >
       (SELECT SUM(GRAND_TOTAL)
       From order_header
       WHERE PLACED_DATE = '2020-04-17');

       +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
       | ORDER_ID | ORDER_NAME   | PLACED_DATE             | APPROVED_DATE           | STATUS_ID      | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
       +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
       | 100102   | Test Order 3 | 2021-04-17 00:00:00.000 | 2021-04-21 00:00:00.000 | OrderCompleted | USD             | OMS_DEFAULT_STORE | ScWeb                 |    129.9200 |
       +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+



16.Output the sum of the grandTotal from Order_header table for each placed date where total sum is greater than 60.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query:  SELECT PLACED_DATE,SUM(GRAND_TOTAL)
                FROM order_header
                GROUP BY GRAND_TOTAL,PLACED_DATE
                HAVING SUM(GRAND_TOTAL)>60;

        +-------------------------+------------------+
        | PLACED_DATE             | SUM(GRAND_TOTAL) |
        +-------------------------+------------------+
        | 2020-04-17 00:00:00.000 |          77.9500 |
        | 2019-04-24 00:00:00.000 |          87.0700 |
        | 2021-04-17 00:00:00.000 |         129.9200 |
        | 2020-03-17 00:00:00.000 |          75.9300 |
        +-------------------------+------------------+

17.Output the Person party Id, first name and last name for all customers who have placed orders on 2020-04-17.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT PARTY_ID,FIRST_NAME,LAST_NAME, PLACED_DATE
       FROM person AS P1
       JOIN order_part AS O1
       ON P1.PARTY_ID = O1.CUSTOMER_PARTY_ID
       JOIN order_header AS O2
       ON O1.ORDER_ID = O2.ORDER_ID
       AND PLACED_DATE = '20-04-17';

      +-----------+------------+-----------+-------------------------+
      | PARTY_ID  | FIRST_NAME | LAST_NAME | PLACED_DATE             |
      +-----------+------------+-----------+-------------------------+
      | CustDemo1 | Joe        | Public    | 2020-04-17 00:00:00.000 |
      | CustDemo1 | Joe        | Public    | 2020-04-17 00:00:00.000 |
      | CustDemo1 | Joe        | Public    | 2020-04-17 00:00:00.000 |
      +-----------+------------+-----------+-------------------------+



18.List the Person details whose order status in order_part table is OrderApproved using EXISTS operator.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM person AS P1
       WHERE EXISTS(SELECT CUSTOMER_PARTY_ID
       FROM order_part AS T1
       WHERE P1.PARTY_ID = T1.CUSTOMER_PARTY_ID
       AND STATUS_ID = 'OrderApproved');

       +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+-------------------+
       | PARTY_ID  | SALUTATION | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | MARITAL_STATUS_ENUM_ID | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
       +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+-------------------+
       | CustDemo1 | Mr         | Joe        | Q           | Public    | M      | 1999-06-15 | MarsSingle             | EmpsFullTime              | Software Engineer |
       | CustDemo4 | Ms         | John       | J           | Norvig    | F      | 1998-06-11 | MarsSingle             | EmpsFullTime              | Software Engineer |
       | CustDemo5 | Mr         | Charlie    | Jack        | William   | M      | 1992-04-22 | MarsMarried            | EmpsSelf                  | Architect         |
       | CustDemo6 | Mr         | James      | W           | Evans     | M      | 1993-05-20 | MarsMarried            | EmpsFullTime              | Civil Engineer    |
       +-----------+------------+------------+-------------+-----------+--------+------------+------------------------+---------------------------+-------------------+



19.List the Order_header details for highest grand_total for each placed date.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM order_header
       WHERE GRAND_TOTAL
       IN (SELECT MAX(GRAND_TOTAL)
       FROM order_header group by PLACED_DATE);

    +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
    | ORDER_ID | ORDER_NAME   | PLACED_DATE             | APPROVED_DATE           | STATUS_ID      | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
    +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
    | 100051   | Test Order 1 | 2020-04-17 00:00:00.000 | 2020-04-19 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     77.9500 |
    | 100061   | Test Order 6 | 2019-04-24 00:00:00.000 | 2019-04-28 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     87.0700 |
    | 100064   | Test Order 7 | 2022-01-09 00:00:00.000 | 2022-01-10 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     48.8700 |
    | 100102   | Test Order 3 | 2021-04-17 00:00:00.000 | 2021-04-21 00:00:00.000 | OrderCompleted | USD             | OMS_DEFAULT_STORE | ScWeb                 |    129.9200 |
    | 100153   | Test Order 4 | 2020-04-19 00:00:00.000 | 2020-04-21 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     31.6400 |
    | 100255   | Test Order 5 | 2020-03-17 00:00:00.000 | 2020-03-21 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     75.9300 |
    +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+


20.Find the count of order_parts for each Person.
Output the below details for this query:
partyId
firstName
lastName
count
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT p.PARTY_ID,p.FIRST_NAME,p.LAST_NAME,COUNT(*)
       FROM order_part AS o
       LEFT JOIN person AS p
       ON o.CUSTOMER_PARTY_ID = p.PARTY_ID
       GROUP BY CUSTOMER_PARTY_ID;

    +-----------+------------+-----------+----------+
    | PARTY_ID  | FIRST_NAME | LAST_NAME | COUNT(*) |
    +-----------+------------+-----------+----------+
    | CustDemo1 | Joe        | Public    |        3 |
    | CustDemo3 | Lily       | Brown     |        2 |
    | CustDemo4 | John       | Norvig    |        1 |
    | CustDemo5 | Charlie    | William   |        2 |
    | CustDemo6 | James      | Evans     |        4 |
    +-----------+------------+-----------+----------+


21.Output the customerPartyId and highest order grandTotal for each customer.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT T2.CUSTOMER_PARTY_ID, MAX(GRAND_TOTAL)
              FROM person AS T1
              JOIN order_part AS T2
              ON T1.PARTY_ID = T2.CUSTOMER_PARTY_ID
              JOIN order_header AS T3
              ON T2.ORDER_ID = T3.ORDER_ID GROUP BY CUSTOMER_PARTY_ID;

        +-------------------+------------------+
        | CUSTOMER_PARTY_ID | MAX(GRAND_TOTAL) |
        +-------------------+------------------+
        | CustDemo1         |          77.9500 |
        | CustDemo6         |          87.0700 |
        | CustDemo3         |         129.9200 |
        | CustDemo4         |          31.6400 |
        | CustDemo5         |          75.9300 |
        +-------------------+------------------+



22.List the Order_Header details with more than one order_part.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM order_header WHERE ORDER_ID IN
       (SELECT T1.ORDER_ID FROM order_header AS T1, order_part AS T2
       WHERE T1.ORDER_ID = T2.ORDER_ID
       GROUP BY T1.ORDER_ID HAVING COUNT(*)> 1);

       +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
       | ORDER_ID | ORDER_NAME   | PLACED_DATE             | APPROVED_DATE           | STATUS_ID      | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
       +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
       | 100255   | Test Order 5 | 2020-03-17 00:00:00.000 | 2020-03-21 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     75.9300 |
       | 100102   | Test Order 3 | 2021-04-17 00:00:00.000 | 2021-04-21 00:00:00.000 | OrderCompleted | USD             | OMS_DEFAULT_STORE | ScWeb                 |    129.9200 |
       | 100064   | Test Order 7 | 2022-01-09 00:00:00.000 | 2022-01-10 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     48.8700 |
       | 100061   | Test Order 6 | 2019-04-24 00:00:00.000 | 2019-04-28 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     87.0700 |
       | 100051   | Test Order 1 | 2020-04-17 00:00:00.000 | 2020-04-19 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     77.9500 |
       +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+



23.List all Order_header details whose grandTotal is greater than the average grandTotal for all orders placed on 2020-04-17.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT * FROM order_header WHERE GRAND_TOTAL >
       (SELECT AVG(GRAND_TOTAL) FROM order_header
       WHERE PLACED_DATE = '2020-04-17');

       +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
       | ORDER_ID | ORDER_NAME   | PLACED_DATE             | APPROVED_DATE           | STATUS_ID      | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
       +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
       | 100051   | Test Order 1 | 2020-04-17 00:00:00.000 | 2020-04-19 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     77.9500 |
       | 100061   | Test Order 6 | 2019-04-24 00:00:00.000 | 2019-04-28 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     87.0700 |
       | 100064   | Test Order 7 | 2022-01-09 00:00:00.000 | 2022-01-10 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     48.8700 |
       | 100102   | Test Order 3 | 2021-04-17 00:00:00.000 | 2021-04-21 00:00:00.000 | OrderCompleted | USD             | OMS_DEFAULT_STORE | ScWeb                 |    129.9200 |
       | 100255   | Test Order 5 | 2020-03-17 00:00:00.000 | 2020-03-21 00:00:00.000 | OrderApproved  | USD             | OMS_DEFAULT_STORE | ScWeb                 |     75.9300 |
       +----------+--------------+-------------------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+


24.List the ItemSalesTax Order_Item Details for each order_part.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT T2.ITEM_TYPE_ENUM_ID,
       T1.ORDER_ID, T1.ORDER_PART_SEQ_ID, T1.PART_NAME,T1.STATUS_ID, T1.VENDOR_PARTY_ID,
       T1.CUSTOMER_PARTY_ID, T1.PART_TOTAL, T1.FACILITY_ID, T1.SHIPMENT_METHOD_ENUM_ID
       FROM order_part AS T1, order_item AS T2
       WHERE T1.ORDER_ID = T2.ORDER_ID
       AND ITEM_TYPE_ENUM_ID = 'ItemSalesTax';

    +-------------------+----------+-------------------+-----------+----------------+-----------------+-------------------+------------+-------------+-------------------------+
    | ITEM_TYPE_ENUM_ID | ORDER_ID | ORDER_PART_SEQ_ID | PART_NAME | STATUS_ID      | VENDOR_PARTY_ID | CUSTOMER_PARTY_ID | PART_TOTAL | FACILITY_ID | SHIPMENT_METHOD_ENUM_ID |
    +-------------------+----------+-------------------+-----------+----------------+-----------------+-------------------+------------+-------------+-------------------------+
    | ItemSalesTax      | 100051   | 01                | #101      | OrderApproved  | OMS_VENDOR      | CustDemo1         |    16.9900 | ZIRET_WH    | ShMthGround             |
    | ItemSalesTax      | 100051   | 02                | #102      | OrderApproved  | OMS_VENDOR      | CustDemo1         |    60.9600 | ZIRET_WH_1  | ShMthGround             |
    | ItemSalesTax      | 100052   | 01                | #103      | OrderApproved  | OMS_VENDOR      | CustDemo1         |    16.3200 | ZIRET_WH    | ShMthNextDay            |
    | ItemSalesTax      | 100102   | 01                | #104      | OrderCompleted | OMS_VENDOR      | CustDemo3         |   114.9300 | ZIRET_WH    | ShMthNextDay            |
    | ItemSalesTax      | 100102   | 02                | #105      | OrderCompleted | OMS_VENDOR      | CustDemo3         |    14.9900 | ZIRET_WH_2  | ShMthGround             |
    | ItemSalesTax      | 100153   | 01                | #106      | OrderApproved  | OMS_VENDOR      | CustDemo4         |    31.6400 | ZIRET_WH    | ShMthGround             |
    | ItemSalesTax      | 100153   | 01                | #106      | OrderApproved  | OMS_VENDOR      | CustDemo4         |    31.6400 | ZIRET_WH    | ShMthGround             |
    | ItemSalesTax      | 100255   | 01                | #107      | OrderApproved  | OMS_VENDOR      | CustDemo5         |    42.9600 | ZIRET_WH    | ShMthGround             |
    | ItemSalesTax      | 100255   | 02                | #108      | OrderApproved  | OMS_VENDOR      | CustDemo5         |    32.9700 | ZIRET_WH_2  | ShMthNextDay            |
    +-------------------+----------+-------------------+-----------+----------------+-----------------+-------------------+------------+-------------+-------------------------+


25.List the below Order Information for the orderId, 100153.
orderId
orderPartSeqId
customerPartyId
firstName
lastName
placedDate
orderItemSeqId
productId
itemDescription
unitAmount
quantity
partTotal
grandTotal
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT T1.FIRST_NAME, T1.LAST_NAME,
              T2.ORDER_ID, T2.ORDER_PART_SEQ_ID, T2.CUSTOMER_PARTY_ID, T2.PART_TOTAL,
              T3.PLACED_DATE, T3.GRAND_TOTAL
       FROM person AS T1
       INNER JOIN order_part AS T2 ON T1.PARTY_ID = T2.CUSTOMER_PARTY_ID
       INNER JOIN order_header AS T3 ON T2.ORDER_ID = T3.ORDER_ID
       INNER JOIN order_item AS T4 ON T3.ORDER_ID = T4.ORDER_ID
       WHERE T2.ORDER_ID = 100153;

       +------------+-----------+----------+-------------------+-------------------+------------+-------------------------+-------------+
       | FIRST_NAME | LAST_NAME | ORDER_ID | ORDER_PART_SEQ_ID | CUSTOMER_PARTY_ID | PART_TOTAL | PLACED_DATE             | GRAND_TOTAL |
       +------------+-----------+----------+-------------------+-------------------+------------+-------------------------+-------------+
       | John       | Norvig    | 100153   | 01                | CustDemo4         |    31.6400 | 2020-04-19 00:00:00.000 |     31.6400 |
       | John       | Norvig    | 100153   | 01                | CustDemo4         |    31.6400 | 2020-04-19 00:00:00.000 |     31.6400 |
       | John       | Norvig    | 100153   | 01                | CustDemo4         |    31.6400 | 2020-04-19 00:00:00.000 |     31.6400 |
       | John       | Norvig    | 100153   | 01                | CustDemo4         |    31.6400 | 2020-04-19 00:00:00.000 |     31.6400 |
       +------------+-----------+----------+-------------------+-------------------+------------+-------------------------+-------------+


26.List the below Order details for the customerPartyId CustDemo1.
orderId
orderPartSeqId
orderName
partName
customerPartyId
facilityId
orderItemSeqId
productId
itemDescription
quantity
unitAmount
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Query: SELECT T1.ORDER_ID,T1.ORDER_PART_SEQ_ID,T1.PART_NAME,T1.CUSTOMER_PARTY_ID,T1.FACILITY_ID,
       T2.ORDER_NAME,
       T3.ORDER_ITEM_SEQ_ID,T3.PRODUCT_ID,T3.ITEM_DESCRIPTION,T3.QUANTITY,T3.UNIT_AMOUNT
       FROM order_part AS T1
       JOIN order_header AS T2
       ON T1.ORDER_ID = T2.ORDER_ID
       JOIN order_item AS T3
       ON T2.ORDER_ID = T3.ORDER_ID
       AND CUSTOMER_PARTY_ID ='CustDemo1';

    +----------+-------------------+-----------+-------------------+-------------+--------------+-------------------+-------------+-------------------------+----------+-------------+
    | ORDER_ID | ORDER_PART_SEQ_ID | PART_NAME | CUSTOMER_PARTY_ID | FACILITY_ID | ORDER_NAME   | ORDER_ITEM_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | QUANTITY | UNIT_AMOUNT |
    +----------+-------------------+-----------+-------------------+-------------+--------------+-------------------+-------------+-------------------------+----------+-------------+
    | 100051   | 01                | #101      | CustDemo1         | ZIRET_WH    | Test Order 1 | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |    16.99000 |
    | 100051   | 01                | #101      | CustDemo1         | ZIRET_WH    | Test Order 1 | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 |
    | 100051   | 01                | #101      | CustDemo1         | ZIRET_WH    | Test Order 1 | 03                | NULL        | Sales Tax               | 3.000000 |     1.33000 |
    | 100051   | 02                | #102      | CustDemo1         | ZIRET_WH_1  | Test Order 1 | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |    16.99000 |
    | 100051   | 02                | #102      | CustDemo1         | ZIRET_WH_1  | Test Order 1 | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 |
    | 100051   | 02                | #102      | CustDemo1         | ZIRET_WH_1  | Test Order 1 | 03                | NULL        | Sales Tax               | 3.000000 |     1.33000 |
    | 100052   | 01                | #103      | CustDemo1         | ZIRET_WH    | Test Order 2 | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
    | 100052   | 01                | #103      | CustDemo1         | ZIRET_WH    | Test Order 2 | 02                | NULL        | Sales Tax               | 1.000000 |     1.33000 |
    +----------+-------------------+-----------+-------------------+-------------+--------------+-------------------+-------------+-------------------------+----------+-------------+


