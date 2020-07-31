#formula reminder
#advance = titles.advance * titleauthor.royaltyper / 100
# sales_royalty = titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100

SELECT 
    authors.au_id  AS author_ID,
    titles.title_id AS title_ID,
    (titles.advance * titleauthor.royaltyper / 100) AS advance,
    (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
FROM
    sales
        JOIN
    titles ON sales.title_id = titles.title_id
        JOIN
    titleauthor ON titles.title_id = titleauthor.title_id
        JOIN
    authors ON titleauthor.au_id = authors.au_id
GROUP BY authors.au_id, titles.title_id