#Updating Miami typo
UPDATE Salepersons SET store = "Miami"
WHERE salepersons_id = 4
;

#Updating customer email addresses
UPDATE Customers SET email = "ppicasso@gmail.com"
WHERE customer_id = 0
;
UPDATE Customers SET email = "lincoln@us.gov"
WHERE customer_id = 1
;
UPDATE Customers SET email = "hello@napoleon.me"
WHERE customer_id = 2
;