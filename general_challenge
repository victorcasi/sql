---------------------------
--- General Challenge 1 ---
---------------------------

--- How many payment transactions were greater than $5.00?
SELECT COUNT(amount) AS count
FROM payment
WHERE amount > 5.00

--- How many actors have a first name that starts with the letter P?
SELECT COUNT(first_name) AS count
FROM actor
WHERE first_name LIKE  'P%'

--- How many unique districts are our customers from?
SELECT COUNT(DISTINCT(district)) AS count
FROM address

--- Retrieve the list of names for those distinct districts from the previous question
SELECT DISTINCT (district) AS districts
FROM address

--- How many films have a rating of R and a replacement cost between $5 and $15?
SELECT COUNT (title) AS count
FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15

--- How many films have the word Truman somewhere in the title?
SELECT COUNT (*) AS count
FROM film
WHERE title LIKE '%Truman%'
