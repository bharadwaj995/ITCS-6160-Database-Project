CREATE VIEW Highest_Number_Of_Orders AS
with group1 AS (select person_id,count(*) as Total_Orders 
FROM `order` GROUP BY person_id LIMIT 1),
group2 AS (select person.person_name,rating.Overall_Rating, rating.Restaurant_Ratings
from rating,person)
select * from group1 join group2 LIMIT 1;

SELECT * FROM Highest_Number_Of_Orders;