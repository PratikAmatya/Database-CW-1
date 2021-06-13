SQL> SELECT c.Customer_Name, p.Product_Name , od.Order_Date
  2  FROM Customer c
  3  JOIN Orders O
  4  ON c.Customer_ID = o.Customer_ID
  5  JOIN Order_Details od
  6  ON o.Order_ID = od.Order_ID
  7  JOIN Product p
  8  ON p.Product_ID = od.Product_ID
  9  WHERE od.Order_Date = TO_DATE('2020-06-25','yyyy-mm-dd');

CUSTOMER_NAME                                      PRODUCT_NAME                                       ORDER_DAT                                                                                         
-------------------------------------------------- -------------------------------------------------- ---------                                                                                         
Santos Katuwal                                     Rice                                               25-JUN-20                                                                                         
Santos Katuwal                                     Oil                                                25-JUN-20                                                                                         
Bidur Khanal                                       Noodles                                            25-JUN-20                                                                                         

SQL> Spool off
