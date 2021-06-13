SQL> SELECT Product_name, Unit_Price, Total, Total*Unit_Price AS Total_Price
  2  FROM (SELECT SUM(Order_Details.Quantity) AS Total, Product.Product_Name, Product.Unit_Price
  3  FROM Product
  4  JOIN Order_Details
  5  ON Order_Details.Product_id = Product.Product_id
  6  GROUP BY product.Product_name, product.Unit_Price)
  7  ORDER BY Total_Price DESC;

PRODUCT_NAME                                       UNIT_PRICE      TOTAL TOTAL_PRICE                                                                                                                    
-------------------------------------------------- ---------- ---------- -----------                                                                                                                    
Rice                                                      900          5        4500                                                                                                                    
Coffee                                                    400         10        4000                                                                                                                    
Oil                                                       200          8        1600                                                                                                                    
Dishwasher                                                 90          3         270                                                                                                                    
Biscuits                                                   60          2         120                                                                                                                    
Noodles                                                    30          4         120                                                                                                                    

6 rows selected.

SQL> Spool off
