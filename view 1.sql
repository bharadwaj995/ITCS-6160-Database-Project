CREATE VIEW Top_Bill AS 
SELECT student.student_id,student.major AS student_major,restaurant.restaurant_name, rating.Restaurant_Ratings,MAX(total_price) AS Top_Bill
FROM `order`,student,restaurant,rating;

SELECT * FROM Top_Bill;