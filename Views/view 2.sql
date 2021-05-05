CREATE VIEW Top_Delivery_Charge AS 
SELECT o.order_id,MAX(delivery_charge) AS Max_Delivery_Charge,r.restaurant_name,l.location_name,l.location_address,
ra.Driver_Ratings FROM `order` o INNER JOIN location l INNER JOIN rating ra JOIN restaurant r;

SELECT * FROM Top_Delivery_Charge;
