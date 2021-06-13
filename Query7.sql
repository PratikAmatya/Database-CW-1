SQL> SELECT  DISTINCT c.Customer_ID  ,c.Customer_Name,  a.Country , a.Zone , a.City  FROM Customer c
  2  JOIN Orders o
  3  ON c.Customer_ID = o.Customer_ID
  4  JOIN Order_Details od
  5  ON o.Order_ID = od.Order_ID
  6  JOIN Address a
  7  ON od.Address_ID = a.Address_ID
  8  WHERE  c.Customer_ID = ANY (SELECT  DISTINCT c.Customer_ID FROM Customer c
  9  JOIN Orders o
 10   ON c.Customer_ID = o.Customer_ID
 11   JOIN Order_Details od
 12   ON o.Order_ID = od.Order_ID
 13   JOIN Address a
 14   ON od.Address_ID = a.Address_ID
 15   GROUP BY c.Customer_ID, od.Product_ID
 16   HAVING SUM(od.Quantity)>2)
 17  ORDER BY c.Customer_ID;

CUSTO CUSTOMER_NAME                                      COUNTRY              ZONE                                               CITY                                                                   
----- -------------------------------------------------- -------------------- -------------------------------------------------- --------------------                                                   
C1    Ram Amatya                                         Nepal                Koshi                                              Itahari                                                                
C1    Ram Amatya                                         Nepal                Mechi                                              Jhapa                                                                  
C3    Santos Katuwal                                     Nepal                Bagmati                                            Kathmandu                                                              
C3    Santos Katuwal                                     Nepal                Bagmati                                            Lalitpur                                                               
C3    Santos Katuwal                                     Nepal                Koshi                                              Dharan                                                                 
C4    Bidur Khanal                                       Nepal                Koshi                                              Itahari                                                                
C4    Bidur Khanal                                       Nepal                Mechi                                              Jhapa                                                                  

7 rows selected.

SQL> spool off
