SELECT authors.au_lname, authors.au_fname, titles.title, sales.qty, sales.payterms
FROM sales
JOIN titles
ON sales.title_id = titles.title_id
JOIN titleauthor 
ON titles.title_id = titleauthor.title_id
JOIN authors
ON titleauthor.au_id = authors.au_id
GROUP BY authors.au_lname