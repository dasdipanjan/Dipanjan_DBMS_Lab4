# Q8) Display customer name and gender whose names start or end with character 'A'.
use ecommercedb;
SELECT * FROM customer AS c WHERE (c.CUS_NAME LIKE  'A%' OR c.CUS_NAME LIKE  '%A');