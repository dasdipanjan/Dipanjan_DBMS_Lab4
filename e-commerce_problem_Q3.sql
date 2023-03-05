# Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
# Identified tables [order, customer]
SELECT * FROM `order`;
SELECT * FROM customer;

#================================================================================
SELECT 
    COUNT(t2.CUS_GENDER) AS No_Of_Customers, t2.CUS_GENDER
FROM
    (SELECT 
        t1.CUS_ID, t1.CUS_NAME, t1.CUS_GENDER, t1.ORD_AMOUNT
    FROM
        (SELECT 
        `order`.*, customer.CUS_NAME, customer.CUS_GENDER
    FROM
        `order`
    INNER JOIN customer
    WHERE
        `order`.CUS_ID = customer.CUS_ID
    HAVING `order`.ORD_AMOUNT >= 3000) AS t1
    GROUP BY t1.CUS_ID) AS t2
GROUP BY t2.CUS_GENDER;
# ===============================
