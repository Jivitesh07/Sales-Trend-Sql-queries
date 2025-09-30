# Sales-Trend-Sql-queries

This repository contains the SQL schema, sample data, and analytical queries for tracking and analyzing sales trends from an online sales dataset. The project is designed to demonstrate fundamental Data Definition Language (DDL) and Data Manipulation Language (DML) operations, as well as essential data aggregation and time-series analysis using standard SQL functions.

Key Features - 

Database Setup: SQL commands to create and configure an online_sales database and an orders table.
Sample Data: A robust set of mock sales records spanning a full calendar year to facilitate meaningful analysis.
Sales Trend Query: A core analytical query that calculates monthly total revenue (SUM(amount)) and total distinct orders (COUNT(DISTINCT order_id)).
Time-Series Aggregation: Utilizes EXTRACT(YEAR FROM order_date) and EXTRACT(MONTH FROM order_date) to group results and reveal monthly sales performance and trends.
