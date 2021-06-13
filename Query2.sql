SQL> SELECT P.Product_Name, SUM(OD.Quantity) "Total Sales"
  2  FROM Product P
  3  JOIN Order_Details OD
  4  ON P.Product_ID = OD.Product_ID
  5  GROUP BY P.Product_name
  6  ORDER BY SUM(OD.Quantity) DESC;

PRODUCT_NAME                                       Total Sales                  
-------------------------------------------------- -----------                  
Coffee                                                      10                  
Oil                                                          8                  
Rice                                                         5                  
Noodles                                                      4                  
Dishwasher                                                   3                  
Biscuits                                                     2                  

6 rows selected.

SQL> spool off
