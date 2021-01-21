/*Lab | SQL Queries - Lesson 2.7 Part 2
In this lab, you will be using the Sakila database of movie rentals. You have been using this database for a couple labs already, but if you need to get the data again, refer to the official installation link.

The database is structured as follows: DB schema
Instructions*/

#1 In the table actor, which are the actors whose last names are not repeated? 
#For example if you would sort the data in the table actor by last_name, you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd.
#These three actors have the same last name. So we do not want to include this last name in our output. Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our output list.
SELECT first_name, last_name
from sakila.actor
group by last_name;

#2 Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once
SELECT first_name, last_name, count(last_name)
from sakila.actor
group by last_name;

#3 Using the rental table, find out how many rentals were processed by each employee.
SELECT staff_id, count(staff_id)
from sakila.rental
group by staff_id;

#4 Using the film table, find out how many films were released each year.
SELECT title, release_year, count(title)
from sakila.film
group by release_year;

#5 Using the film table, find out for each rating how many films were there.
SELECT rating, count(rating)
from sakila.film
group by rating;

#6 What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
SELECT rating, length, round(avg(length),2)
from sakila.film
group by rating;

#7 Which kind of movies (rating) have a mean duration of more than two hours?
SELECT rating, round(avg(length),2) AS AvgLengthRating
from film
Group by rating
having AvgLengthRating > 120
Order by rating;
