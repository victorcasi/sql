---------------------------
-------- FUNCTIONS --------
---------------------------

--- EXTRACT ()
--- OBTAIN A SUB-COMPONENT OF A DATE VALUE
--- EXTRACT (YEAR FROM date_Col)
SELECT EXTRACT (YEAR FROM payment_date)
FROM payment

--- AGE ()
--- USES TIMESTAMP
SELECT AGE(payment_date)
FROM payment

--- TO_CHAR ()
--- CONVERT DATA -> TEXT
--- TO_CHAR (date_col, 'mm-dd-yyyy')
SELECT TO_CHAR(payment_date, 'MONTH-YYYY')
FROM payment

---------------------------
------ STR FUNCTIONS ------
---------------------------

SELECT LENGTH (first_name) 
FROM customer

SELECT first_name || ' ' || last_name AS name
FROM customer 

SELECT LOWER(LEFT(first_name,1)) || LOWER(last_name) || '@gmail.com'
AS custom_email
FROM customer
---------------------------
---- FEATTURES CREATING ---
---------------------------

SELECT ROUND(rental_rate/replacement_cost,4)*100 AS percent_cost
FROM film

SELECT 0.1*replacement_cost AS deposit
FROM film
