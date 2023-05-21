SELECT *
FROM public.console_games

UPDATE console_games
SET global_sales = na_sales + eu_sales + jp_sales + other_sales

ALTER TABLE console_games
ADD COLUMN na_sales_perc float8;

UPDATE console_games
SET na_sales_perc = na_sales / global_sales * 100
WHERE global_sales > 0

SELECT publisher, LEFT(publisher, 4) --First 4 letters of publisher name, 3rd assignment
FROM public.console_games

SELECT COUNT(platform_name)  --Platforms released before Black Friday and Christmas, 4th assignment
FROM console_dates
WHERE DATE_PART('month',first_retail_availability) - 12= 0 OR DATE_PART('month', first_retail_availability)-11=0

