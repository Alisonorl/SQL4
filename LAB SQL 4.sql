#Get film ratings.
#Get release years.
#Get all films with ARMAGEDDON in the title.
#Get all films with APOLLO in the title
#Get all films which title ends with APOLLO.
#Get all films with word DATE in the title.
#Get 10 films with the longest title.
#Get 10 the longest films.
#How many films include Behind the Scenes content?
#List films ordered by release year and title in alphabetical order.

use sakila;
select title, rating from film;
select release_year, title from film;
select * from film
where title like '%ARMAGEDDON%';
select * from film
where title like '%APOLLO%';
select * from film
where title like '%APOLLO';
select * from film
where title like '%date%';
select title, length(title) as length_film from film
order by length_film desc
limit 10;
select special_features from film;
select count(title) from film
where special_features like '%behind%';
select title, release_year from film
order by release_year ASC, title;
