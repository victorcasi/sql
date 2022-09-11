--- CONDITIONALS ---

---------------
---CASE WHEN---
---------------

SELECT customer_id,
CASE
     WHEN (customer_id <= 100) THEN 'Premium'
     WHEN (customer_id BETWEEN 100 and 200) THEN 'Plus'
     ELSE 'Normal'
END AS customer_class
FROM CUSTOMER

SELECT customer_id,
CASE customer_id
     WHEN 2 THEN 'Winner'
     WHEN 5 THEN 'Second Place'
     ELSE 'Normal'
END AS raffle_results
FROM CUSTOMER

SELECT rental_rate,
CASE rental_rate
     WHEN 0.99 THEN 1
     ELSE 0
END
FROM film

------------------------
--- CREATING A TABLE ---
------------------------

SELECT
SUM (CASE rental_rate
     WHEN 0.99 THEN 1
     ELSE 0
     END) AS bargains,
SUM (CASE rental_rate
     WHEN 2.99 THEN 1
     ELSE 0
     END) AS regular,
SUM (CASE rental_rate
     WHEN 4.99 THEN 1
     ELSE 0
     END) AS premium
FROM film

----------------
--- COALESCE ---
----------------

--- Returns the first argument that is not null.
--- If all arguments are null, the COALESCE function will return null
--- COALESCE (arg_1, arg_2,...,arg_n)

--- SELECT COALESCE (1,2) -> WILL RETURN 1
--- SELECT COALESCE (NULL,2,3) -> WILL RETURN 2


------------
--- CAST ---
------------

--- Convert from one data type into another
--- '5' to an integer will work
--- 'five' to an integer won't

--- SELECT CAST ('5' AS INTEGER)
--- PostgreeSQL -> SELECT '5'::INTEGER

SELECT CAST ('5' AS INTEGER) AS new_int
SELECT CAST (inventory_id AS VARCHAR) FROM rental

--------------
--- NULLIF ---
--------------

--- Takes in 2 inputs and returns NULL if both are equal
--- Otherwise it returns the first argument passed

--- NULLIF(10,10) -> WILL RETURN NULL


