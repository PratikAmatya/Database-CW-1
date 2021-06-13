SQL> SELECT customerid "Customer ID",  MAX(Productname) "Product Name",MAX (total) "Max Orders"
  2  FROM
  3  (SELECT SUM(od.Quantity) AS Total, MAX(p.Product_name) AS Productname, c.Customer_ID  AS customerid FROM Customer c
  4  JOIN Orders o
  5   ON c.Customer_ID = o.Customer_ID
  6   JOIN Order_Details od
  7   ON o.Order_ID = od.Order_ID
  8   JOIN Product p
  9   ON p.Product_id = od.Product_id
 10   JOIN Address a
 11   ON od.Address_ID = a.Address_ID
 12   GROUP BY c.Customer_ID, od.Product_ID)
 13  GROUP BY customerid
 14  ORDER BY customerid;

Custo Product Name                                       Max Orders                                                                                                                                     
----- -------------------------------------------------- ----------                                                                                                                                     
C1    Oil                                                         4                                                                                                                                     
C2    Biscuits                                                    2                                                                                                                                     
C3    Rice                                                        6                                                                                                                                     
C4    Noodles                                                     4                                                                                                                                     
C5    Dishwasher                                                  1                                                                                                                                     

SQL> Spool off
