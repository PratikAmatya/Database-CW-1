SQL> SELECT * FROM Customer;

CUSTO CUSTOMER_NAME                                                             
----- --------------------------------------------------                        
C1    Saroj Karki                                                               
C2    Rohit Pandey                                                              
C3    Santos Katuwal                                                            
C4    Bidur Khanal                                                              
C5    Kusum Tamang                                                              

SQL> UPDATE Customer SET Customer_Name = 'Ram Amatya' WHERE Customer_ID = 'C1';

1 row updated.

SQL> SELECT * FROM Customer;

CUSTO CUSTOMER_NAME                                                             
----- --------------------------------------------------                        
C1    Ram Amatya                                                                
C2    Rohit Pandey                                                              
C3    Santos Katuwal                                                            
C4    Bidur Khanal                                                              
C5    Kusum Tamang                                                              

SQL> Spool off
