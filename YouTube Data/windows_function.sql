-- create a new table
CREATE TABLE windows(
	new_id int8,
	new_cat varchar
)

-- show the table
SELECT * FROM windows

-- insert values in the table
INSERT INTO windows
(new_id, new_cat)

VALUES
(100, 'Agni'),
(200, 'Agni'),
(500, 'Dharti'),
(700, 'Dharti'),
(200, 'Vayu'),
(300, 'Vayu'),
(500, 'Vayu');

-- applying windows function
SELECT new_id,new_cat,
SUM(new_id) OVER(PARTITION BY new_cat ORDER BY new_id) AS "Total",
AVG(new_id) OVER(PARTITION BY new_cat ORDER BY new_id) AS "Total",
COUNT(new_id) OVER(PARTITION BY new_cat ORDER BY new_id) AS "Total",
MIN(new_id) OVER(PARTITION BY new_cat ORDER BY new_id) AS "Total",
MAX(new_id) OVER(PARTITION BY new_cat ORDER BY new_id) AS "Total"
FROM windows

