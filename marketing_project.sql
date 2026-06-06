create database marketing; 
use marketing;
select * from market;
select count(*) from market;

select min(campaign_date) as earliest_campaign_date,
max(campaign_date) as latest_campaign_date
from market;

select count(distinct campaign_name) as unique_names
from market;

select count(distinct category) as unique_categories
from market;

select max(revenue) as highest_revenue
from market;

select min(revenue) as lowest_revenue
from market;

select max(mark_spent) as highest_spent
from market;

select min(mark_spent) as lowest_spent
from market;

select category, sum(revenue) as total_revenue
from market
group by category;

select campaign_name, sum(mark_spent) as total_mark_spent
from market
group by campaign_name;

select category, sum(orders) as total_orders
from market
group by category;

--- Top 5 Campaigns by Revenue
select campaign_name, sum(revenue) as total_revenue
from market
group by campaign_name
order by total_revenue desc
limit 5;

select campaign_name, sum(mark_spent) as total_mark_spent
from market
group by campaign_name
order by total_mark_spent desc
limit 5;

select campaign_name, sum(orders) as total_orders
from market
group by campaign_name
order by total_orders desc
limit 5;

select campaign_name, sum(leads) as total_leads
from market
group by campaign_name
order by total_leads desc
limit 5;

select
    month(campaign_date) as month_num,
    sum(revenue) as total_revenue
from market
group by month(campaign_date)
order by month_num;





























