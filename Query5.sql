SQL> SELECT * FROM
  2  (SELECT p.Product_name, SUM(od.Quantity) AS total
  3  FROM Product p
  4  JOIN Order_Details od
  5  on p.Product_id = od.Product_id
  6  GROUP BY p.Product_name
  7  ORDER BY total DESC)
  8  where ROWNUM <= 1;

PRODUCT_NAME                                            TOTAL                   
-------------------------------------------------- ----------                   
Coffee                                                     10                   

SQL> Spool off
