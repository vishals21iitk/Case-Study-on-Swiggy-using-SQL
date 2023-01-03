/*on which day did max sales happen pre and post diwali*/
select newdate, sum(ITEM_GMV) as presales 
from prediwalisales
group by newdate
order by presales desc;

select newdate, sum(ITEM_GMV) as postsales 
from postdiwalisales
group by newdate
order by postsales desc;

/*top 10 cities in terms of sales pre and post diwali*/
select City as precity, sum(ITEM_GMV) as presumsales 
from prediwalisales  
group by City
order by sum(ITEM_GMV) desc
limit 10;

select City as postcity, sum(ITEM_GMV) as postsumsales
from postdiwalisales  
group by City
order by sum(ITEM_GMV) desc
limit 10;

/*bottom 10 cities in terms of sales pre and post diwali*/
select City as precity, sum(ITEM_GMV) as presumsales 
from prediwalisales  
group by City
order by sum(ITEM_GMV) asc
limit 10;

select City as postcity, sum(ITEM_GMV) as postsumsales
from postdiwalisales  
group by City
order by sum(ITEM_GMV) asc
limit 10;

/*total average sales pre and post diwali*/
select avg(postsumsales), count(*) as numberofshops
from (select id, sum(ITEM_GMV) as postsumsales from postdiwalisales group by Shop_NAME) as temptable;

select avg(presumsales), count(*) as numberofshops
from (select id, sum(ITEM_GMV) as presumsales from prediwalisales group by Shop_NAME) as temptable;

/*Shop wise sales Pre and Post Diwali*/
select Shop_NAME, sum(ITEM_GMV) as sumpresales 
from prediwalisales
group by Shop_NAME
order by sumpresales desc;

select Shop_NAME, sum(ITEM_GMV) as sumpostsales 
from postdiwalisales
group by Shop_NAME
order by sumpostsales desc;

select Shop_NAME, sum(ITEM_GMV) as sumpresales 
from prediwalisales
group by Shop_NAME
order by sumpresales asc;

select Shop_NAME, sum(ITEM_GMV) as sumpostsales 
from postdiwalisales
group by Shop_NAME
order by sumpostsales asc;

/*Which hour of the day gives maximum sales during the day pre and post diwali*/
select Hour_of_the_day, sum(ITEM_GMV) as totalpresales 
from prediwalisales
group by Hour_of_the_day
order by totalpresales desc;

select Hour_of_the_day, sum(ITEM_GMV) as totalpostsales 
from postdiwalisales
group by Hour_of_the_day
order by totalpostsales desc;

/*Which hour of the day gives lowest sales during the day pre and post diwali*/
select Hour_of_the_day, sum(ITEM_GMV) as totalpresales 
from prediwalisales
group by Hour_of_the_day
order by totalpresales asc;

select Hour_of_the_day, sum(ITEM_GMV) as totalpostsales 
from postdiwalisales
group by Hour_of_the_day
order by totalpostsales asc;

/*top 10 most popular item among all shops pre and post diwali*/
select ITEM_NAME, sum(ITEM_GMV) as sumofpresales, CATEGORY
from prediwalisales
group by ITEM_NAME
order by sumofpresales desc
limit 10;

select ITEM_NAME, sum(ITEM_GMV) as sumofpostsales, CATEGORY
from postdiwalisales
group by ITEM_NAME
order by sumofpostsales desc