# MySQL Technical Exercise

## Background

You have been given a database `sales_db` with three tables: `products`, `customers`, and `orders`. The database is used to track sales transactions for an e-commerce platform.

## Tasks

1. **Schema Review and Optimization:**
   - Review the existing schema provided in the `test002_sales_db.sql` file. Identify and document any potential issues with the current design.
   - Propose improvements or redesigns that could enhance performance, scalability, or data integrity.

2. **Query Development:**
   - Write a query to list customers who have made more than one order in the past month but have not made any purchase over $100 in value.
   - Create a summary view that shows the total revenue per product category for the current year.

3. **Performance Tuning:**
   - An `EXPLAIN` analysis reveals that the query to fetch monthly sales data is performing a full table scan on `orders`. Suggest indexes to improve query performance, and provide the `ALTER TABLE` SQL statement to create them.

4. **Stored Procedure and Trigger Creation:**
   - Write a stored procedure `process_new_order` that takes order details as input and inserts the necessary records into the relevant tables.
   - Develop a trigger that prevents insertion into the `orders` table if the ordered product's quantity in stock is zero.

5. **Backup and Restore:**
   - Outline the steps and write the necessary commands to perform a full backup of `sales_db`.
   - Explain how you would restore this backup to a new database called `sales_db_recovery`.

## Evaluation Criteria

Your solutions will be evaluated on the following:

- Accuracy and efficiency of queries and schema designs.
- Effectiveness of performance improvements.
- Security considerations in SQL scripts.
- Clarity and organization of written documentation for your review and suggestions.

## Submission Guidelines

This information does not need to be submited, will be part of a live evaluation.

## Timeframe

Complete and submit your solutions within 7 days of receiving this test.

## Questions?

Please reach out to the provided contact email with any questions or clarifications needed during the test.

Good luck!
