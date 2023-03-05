 #Q5) Display the Supplier details of who is supplying more than one product.
 #===========================================================
 use ecommercedb;
 SELECT * FROM supplier;
 SELECT * FROM product;
 SELECT * FROM supplier_pricing;
 
SELECT 
    sup.SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE
FROM
    supplier AS sup
        INNER JOIN
    (SELECT 
        *
    FROM
        supplier_pricing
    GROUP BY SUPP_ID
    HAVING COUNT(SUPP_ID) > 1) AS sp ON sup.SUPP_ID = SP.SUPP_ID;