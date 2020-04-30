#1. Which are the different genres?
SELECT prime_genre FROM applestore.data;

#2. Which is the genre with more apps rated?
SELECT prime_genre, rating_count_tot FROM applestore.data ORDER BY rating_count_tot DESC LIMIT 1;

#3. Which is the genre with more apps?
SELECT prime_genre, max(size_bytes) FROM applestore.data;

#4. Which is the one with less?
SELECT min(size_bytes), prime_genre FROM applestore.data;

#5. Take the 10 apps most rated.
SELECT * FROM applestore.data ORDER BY rating_count_tot DESC LIMIT 10;

#6. Take the 10 apps best rated by users.
SELECT * FROM applestore.data ORDER BY user_rating DESC LIMIT 10;

#7. Take a look on the data you retrieved in the question 5. Give some insights.

#8. Take a look on the data you retrieved in the question 6. Give some insights.

#9. Now compare the data from questions 5 and 6. What do you see?

#10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT * FROM applestore.data ORDER BY user_rating DESC, rating_count_tot DESC LIMIT 3;

#11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
