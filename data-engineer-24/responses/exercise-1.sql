-- This CTE splits rows containing multiple items into separate rows.
WITH transaction_item_split AS (
    SELECT 
        MONTH(datetime) AS month_number,
        JSON_UNQUOTE(JSON_EXTRACT(details, '$.items[0].id')) AS item_id,
        JSON_UNQUOTE(JSON_EXTRACT(details, '$.items[0].amount')) AS item_amount
    FROM 
        transactions
    
    UNION ALL
    
    SELECT 
        MONTH(datetime) AS month_number,
        JSON_UNQUOTE(JSON_EXTRACT(details, '$.items[1].id')) AS item_id,
        JSON_UNQUOTE(JSON_EXTRACT(details, '$.items[1].amount')) AS item_amount
    FROM 
        transactions
    WHERE 
        JSON_UNQUOTE(JSON_EXTRACT(details, '$.items[1].id')) IS NOT NULL
    
    UNION ALL
    -- This part extracts the 3rd item if present.
    SELECT 
        MONTH(datetime) AS month_number,
        JSON_UNQUOTE(JSON_EXTRACT(details, '$.items[2].id')) AS item_id,
        JSON_UNQUOTE(JSON_EXTRACT(details, '$.items[2].amount')) AS item_amount
    FROM 
        transactions
    WHERE 
        JSON_UNQUOTE(JSON_EXTRACT(details, '$.items[2].id')) IS NOT NULL
)
select 
tis.month_number as "month",
o.locationId as Location_Id,
sum(IFNULL(o.item_amount,0)) as totalAmount
from
transaction_item_split tis
join
order-items o
on(o.id=tis.item_id)
group by tis.month_number,o.locationId;

-- 1. CTE Creation: The transaction_item_split CTE splits transactions containing multiple items into separate rows for each item using JSON functions, combining them with UNION ALL.
-- 2. Data Joining and Aggregation: The main query joins the CTE data with an order-items table on item_id, sums the item_amount (handling nulls with IFNULL), and groups results by month and location for organized analysis.
-- 3.Syntax Handling: Uses quotes around "month" to avoid conflicts with MySQL reserved keywords.
--4. Error Handling: Ensures data integrity in sums with IFNULL to handle potential null values in item amounts.




