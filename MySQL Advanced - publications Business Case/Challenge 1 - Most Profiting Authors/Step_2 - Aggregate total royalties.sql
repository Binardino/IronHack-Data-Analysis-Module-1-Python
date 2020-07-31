SELECT
    au_id  AS author_ID,
    title_id AS title_ID,
    SUM(sales_royalty) AS aggregated_royalties
    FROM
(
SELECT 
    authors.au_id,
    titles.title_id,
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
) AS all_sales
GROUP BY au_id, title_id
ORDER BY aggregated_royalties DESC
;