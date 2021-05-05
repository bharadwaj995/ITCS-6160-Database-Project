## Contributors:

-   Zi Yao Ngai
-   Saranyaa Thirumoorthy
-   Sumanth Kuthuru
-   Bharadwaj Aryasomayajula

## Domain:

Data Base design of a Restaurant Management Deliery and Ratings Implementation system.

## Objective and Design Model 
This subject area is designed to store information about customers and their orders. It will help us keep our customers happy and keep the quality of our service high. It consists of four tables.

1. Customer  
2. Customer_order 
3. Order_item  
4. Order_status

**1. Customer:**

The customer can place an order only through their personal account created through our online shop. The customer table will store all the account data. It has 8 attributes. Id, ciustomer_name, email, user_name, password, confirmation_code, confirmation_time, country_id. Id is a unique ID for each customer and acts as a primacy key for the table. The customer_name attribute has the unique name of the customer. The email is the customer's e-mail address used to set up their account. The user_name is chosen by the customer during account creation. Password is the hash value of the password chosen by the customer. Confirmation code is A code sent to the customer during the registration process to confirm their account. Confirmation_time is the time when the account was confirmed by the customer. Country_id is a foreigner key which

references the country table where the customer lives. Both email and user_name can be used as alternate keys for the table.

**2. Customer_order**

Once the account is created, then the customer can proceed and place their orders. This table will contain all customer order data and will allow us to create invoices and monitor payment and delivery status. The Id is the unique ID of that order. The customer_id is a foreign key and references to the customer table who placed the order. Order_time time when the order was placed. It also stores all the details related to everything about the order.

**3. Order_item:**

This table will contain data about the items being ordered and will serve as a connection between the customer_order and item tables. Unique ID the id of the item being ordered. The customer_order_id and the item_id are the foriegnkeys that references for customer_order and item. The price will be the price of the item.

**4. order_status:**

It has a unique value and a status is assigned at the same moment when the corresponding time value is set, so we can expect statuses like “order placed”, “paid”, “canceled”, “completed”, “sent”, etc.

**Relationships:**

***Item and order_item:*** The item and order_item has one to many relationships which means an item can be ordered zero to may times but an order item can only be for any one particular item.

***Customer and Customer_order:*** The customer and customer_order has one to many relationships which means a customer can have zero to many orders but a customer_order can only belong to only one customer.

***Customer_order and order_item:*** The customer_order and order_item has one to many relationships which means a customer can order zero to many items but an order be only for one customer.

***Order_status and customer_order:*** The order_status and Customer_order has one to many relationships which means an order status can belong to zero to many customer orders but customer order can have only one order_status.

****USE CASE Diagram / EERD Diagram_rating_Implementation****

![enter image description here](https://lh3.googleusercontent.com/iuVd-HdxstSTYlwafmRzEQMDbu55zQKX7aw7B6mpKj0DcoIUWnAH5qZlcw7N_XYqYdKfMtFfQg68_3DfoWKbdGSY1Kz2doHLN7pm1Ya9PZi9qPuCjwdaxtadgzLbWse0Q9PUU2Ve4QL4H76V_Uoq8MAyOvfoqr911BBqmPdBLpdMbShrwdAWZNVEQBifTU_dghl2jDMP_lVJk_izZhVnA0-bPzPMSJOlxCe_t4_-cHqfbP3WjVE_bedE6abS66NC5JFcgiGkDIWwKDSMyAuwWvh82TogmD2hqEN2NI8XowOFnqDhWgmP78lwSy5Ga_W_m37sjBpW--A7Yp5I7L_ANaYovmusabpXs55mrsJ3PelbbOG2e48d8QWEtc5O9l6UwhHh5mMOCHnZDKi5-ZwFYyenMfNUCwsVadb7qRbXSXcel3HL9X527kjn4vNrBCsdSpcsYkyQcSSaaWzZplbadrLU9fGcTJFNqe6wa2mXWU3keWi9KkN4uiN7ObW_BWN7GLgEBEk294YYoRzX9BCRmzi2-1PBpQbQzCfJ9rxhISewb8ahbS9ma515U1w41zTDGra2MZcCB50Tsmm5ujnrov3X2cYoZLOybJrAm3qG_qk-1TTJdkSkp_YjNAiFdQIus-AF9M3Lp4Uq2O6T3a49UZiWGlYjRnQG2CU8Ypvb7MD1KpJmeE2g8YYyAh5dNY9eBy8UA6wy48sgTB_4GHyVyA0=w1524-h1498-no?authuser=2)
