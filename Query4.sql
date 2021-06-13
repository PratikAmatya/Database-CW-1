SQL> SELECT c.Customer_Name, od.Order_ID,od.Quantity,od.Order_Date, p.Product_Name
  2  FROM Customer c
  3  JOIN Orders O
  4  ON c.Customer_ID = o.Customer_ID
  5  JOIN Order_Details od
  6  ON o.Order_ID = od.Order_ID
  7  JOIN Product p
  8  ON p.Product_ID = od.Product_ID
  9  ORDER BY c.Customer_Name;

CUSTOMER_NAME                                      ORDER   QUANTITY ORDER_DAT PRODUCT_NAME                                                                                                              
-------------------------------------------------- ----- ---------- --------- --------------------------------------------------                                                                        
Bidur Khanal                                       Ord5           4 25-JUN-20 Noodles                                                                                                                   
Bidur Khanal                                       Ord5           2 21-JUL-20 Dishwasher                                                                                                                
Kusum Tamang                                       Ord6           1 08-JUL-20 Dishwasher                                                                                                                
Ram Amatya                                         Ord3           1 05-APR-20 Coffee                                                                                                                    
Ram Amatya                                         Ord1           3 20-JAN-20 Coffee                                                                                                                    
Ram Amatya                                         Ord1           4 20-JAN-20 Oil                                                                                                                       
Rohit Pandey                                       Ord2           2 05-APR-20 Biscuits                                                                                                                  
Santos Katuwal                                     Ord4           5 25-JUN-20 Rice                                                                                                                      
Santos Katuwal                                     Ord4           4 25-JUN-20 Oil                                                                                                                       
Santos Katuwal                                     Ord7           6 03-APR-20 Coffee                                                                                                                    

10 rows selected.

SQL> Spool off
