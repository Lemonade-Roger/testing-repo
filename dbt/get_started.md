The data used in this course is stored as CSVs in a public S3 bucket. You can use the following URLs to import these files into your data warehouse for your own use:

http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/jaffle_shop_orders.csv

http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/jaffle_shop_customers.csv

http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/stripe_payments.csv


BigQuery supports public data sets that can be directly queried. The data is publicly available with the following select statements. This will be important for reference in the models and sources modules.


select * from `dbt-tutorial.jaffle_shop.customers`;

select * from `dbt-tutorial.jaffle_shop.orders`;

select * from `dbt-tutorial.stripe.payment`;