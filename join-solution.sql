-- Question 1
SELECT 
    customers."first_name",
    customers."last_name",
    array_agg(to_json(addresses))
    
FROM customers
JOIN addresses
    ON customers.id = addresses."customer_id"
GROUP BY customers.id; 

-- Question 2
SELECT 
    orders.id,
    array_agg(to_json(line_items))
FROM orders
JOIN line_items
    ON orders.id = line_items.order_id
GROUP BY orders.id

-- Question 3
SELECT
    warehouse.warehouse
FROM warehouse
JOIN warehouse_product
    ON warehouse.id = warehouse_product.product_id
JOIN products
    ON warehouse_product.warehouse_id = products.id
WHERE products.description = 'cheetos'

--
