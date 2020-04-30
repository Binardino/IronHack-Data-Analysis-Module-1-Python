SELECT authors.au_id AS Author_ID, count(*) AS TOTAL, authors.au_lname AS Last_Name, authors.au_fname AS First_Name, titles.title AS Titles
FROM authors AS authors
LEFT JOIN titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN titles 
ON titleauthor.title_id = titles.title_id
LEFT JOIN 
publishers
ON titles.pub_id = publishers.pub_id
GROUP BY Author_ID
ORDER BY TOTAL
DESC
LIMIT 3;