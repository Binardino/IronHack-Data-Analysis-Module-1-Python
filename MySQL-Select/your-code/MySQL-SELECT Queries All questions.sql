#Question 1
SELECT authors.au_id AS "Author ID", authors.au_lname AS "Last Name", authors.au_fname AS "First Name", titles.title AS "Title", publishers.pub_name AS "Publisher"
FROM titles
JOIN
titleauthor
ON titleauthor.au_id = titles.title_id
JOIN
authors
ON authors.au_id = titleauthor.au_id
JOIN publishers
ON publishers.pub_id = titles.pub_id
;

#Question 2
USE publications;
SELECT authors.au_id AS "Author ID", authors.au_lname AS "Last Name", authors.au_fname AS "First Name", titles.title AS "Title", count(*) AS "Tile Count", publishers.pub_name AS "Publisher"
FROM titles
JOIN
titleauthor
ON titleauthor.au_id = titles.title_id
JOIN
authors
ON authors.au_id = titleauthor.au_id
JOIN publishers
ON publishers.pub_id = titles.pub_id
GROUP BY Title;

#Question 3
SELECT authors.au_id AS "Author ID", authors.au_lname AS "Last Name", authors.au_fname AS "First Name", count(*) AS "Total"
FROM titles
JOIN
titleauthor
ON titleauthor.au_id = titles.title_id
JOIN
authors
ON authors.au_id = titleauthor.au_id
GROUP BY "Author ID"
DESC
LIMIT 3
;

#Question 4
SELECT authors.au_id AS "Author ID", authors.au_lname AS "Last Name", authors.au_fname AS "First Name", count(*) AS "Total"
FROM titles
JOIN
titleauthor
ON titleauthor.au_id = titles.title_id
JOIN
authors
ON authors.au_id = titleauthor.au_id
GROUP BY "Author ID"
DESC
;
