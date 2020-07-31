SELECT 
    au_id AS author_ID,
    SUM(sum_royalty + sum_advance) AS author_profits
FROM
    (SELECT 
        au_id,
            title_id,
            SUM(sales_royalty) AS sum_royalty,
            SUM(advance) AS sum_advance
    FROM
        (SELECT 
        authors.au_id,
            titles.title_id,
            (titles.advance * titleauthor.royaltyper / 100) AS advance,
            (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
    FROM
        sales
    JOIN titles ON sales.title_id = titles.title_id
    JOIN titleauthor ON titles.title_id = titleauthor.title_id
    JOIN authors ON titleauthor.au_id = authors.au_id) AS step_1
    
    GROUP BY au_id , title_id) AS step_2
GROUP BY au_id
ORDER BY author_profits DESC
;