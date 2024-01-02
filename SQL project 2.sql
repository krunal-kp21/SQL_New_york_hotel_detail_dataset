
use project;
	 select * from sql_project_name pn ;
	select * from sql_project_2 sp; 

	 # 1. write query to show name from NYC_1

	select pn.name from sql_project_name as pn ;

# 2. write query to show count of id in nyc_1

	select count(spn.id) from sql_project_name spn; 

# 3. write query to show count of id in nyc_2

	select count(sp.id) from sql_project_2 sp; 
	
# 4. write query to show host id in nyc_1

	select spn.host_id from sql_project_name spn;
	
# 5. write query to show all unique host id from nyc_1

	select distinct spn.host_id from sql_project_name spn ;
	
# 6. write query to show all unique neighbourhood_group from nyc_1

	select distinct spn.neighbourhood_group from sql_project_name spn;
	
# 7. write query to show all unique neighbourhood from nyc_1

	select distinct spn.neighbourhood  from sql_project_name spn ;
	
# 8. write query to show room_type from nyc_1

	select spn.room_type  from sql_project_name spn ;
	
# 9. write query to show all values of Brooklyn & Manhattan from nyc_1

	select * from sql_project_name spn 
	where spn.neighbourhood_group in ('Brooklyn', 'Manhattan');
	
# 10. write query to show unique value of room type from nyc_1

	select distinct spn.room_type from sql_project_name spn ;
	
# 11. write query to show maximum price from nyc_2
 
	select max(sp.price) from sql_project_2 sp ; 
	
# 12.write query to show minimum price from nyc_2

	select min(sp.price) from sql_project_2 sp ; 
	
# 13. write query to show average price from nyc_2

	select avg(sp.price) from sql_project_2 sp ;
	
# 14.write query to show minimum value of minimum_nights from nyc_2

	select min(sp.minimum_nights) from sql_project_2 sp ;
	
# 15.write query to show maximum value of minimum_nights from nyc_2

	select max(sp.minimum_nights) from sql_project_2 sp ; 

# 16.write query to show average availability_365
	
select avg(sp.availability_365) from sql_project_2 sp;

# 17.write query to show id , availability_365 and all availability_365
#    value is greater than 300
	
	select sp.id ,sp.availability_365  from sql_project_2 sp 
	where sp.availability_365 > 300;
	
# 18. write query to show count of id where price is in between 300 to 400

	select count(sp.id) from sql_project_2 sp 
	where sp.price between 300 and 400
	
# 19. write query to show count of id where minimum_nights spend is less than 5
	
	select count(sp.id) from sql_project_2 sp
	where sp.minimum_nights < 5;
	
# 20.write query to show count where minimum_nights spend is greater than 100

	select count(sp.id) from sql_project_2 sp
	where sp.minimum_nights > 100;
	
# 21. write query to show all data of nyc_1 & nyc_2

	select * from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id ;
	
# 22. write query to show host name and price

	select spn.host_id ,sp.price from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id ;
	
# 23. write query to show room_type and price

	select spn.room_type  ,sp.price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id ;
	
# 24. write query to show neighbourhood_group&minimum_nights spend

	select spn.neighbourhood_group  ,sp.minimum_nights  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id ;
	
# 25. write query to show neighbourhood & availability_365

	select spn.neighbourhood ,sp.availability_365  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id ;
	
# 26.write query to show total price by neighbourhood_group

	select spn.neighbourhood_group  ,sum(sp.price)Total_price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.neighbourhood_group ;
	
# 27.write query to show maximum price by neighbourhood_group

	select spn.neighbourhood_group  ,max(sp.price)Maximum_price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.neighbourhood_group ;

# 28.write query to show maximum night spend by neighbourhood_group

	select spn.neighbourhood_group  ,max(sp.minimum_nights)Maximum_Nights  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.neighbourhood_group ;
	
# 29.write query to show maximum reviews_per_month spend by neighbourhood

	select spn.neighbourhood  ,max(sp.number_of_reviews)Maximum_reviews  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.neighbourhood  ;
	
# 30.write query to show maximum price by room type

	select spn.room_type  ,max(sp.price)Maximum_Price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.room_type  ;

# 31.write query to show average number_of_reviews by room_type

	select spn.room_type  ,avg(sp.reviews_per_month)Avg_reviews  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.room_type  ;

# 32.write query to show average price by room type
	
	select spn.room_type  ,avg(sp.price)Avg_price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.room_type  ;
	
# 33.write query to show average night spend by room type

	select spn.room_type  ,avg(sp.minimum_nights)Avg_Night_spent  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.room_type  ;
	
# 34.write query to show average price by room type but average price is less than 100

	select spn.room_type  ,avg(sp.price)Avg_Price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.room_type 
	having avg(sp.price) < 100 ;
	
# 35.write query to show average night by neighbourhood and average_nights is greater than 5

	select spn.neighbourhood  ,avg(sp.minimum_nights)Avg_Neight  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.neighbourhood  
	having avg(sp.minimum_nights) > 5 ;
	
# 36. write query to show all data from nyc_1 and price is greater than 200 using sub-query

	select *  from sql_project_name spn 
	where spn.id in  (select sp.id  from sql_project_2 sp where sp.price > 200);
	
# 37. write query to show all values from nyc_2 table and host id is 314941

	select *  from sql_project_2 sp 
	where sp.id in (select spn.id from sql_project_name spn where spn.host_id = 314941)
	
# 38. Find all pairs of id having the same host id, each pair coming once only.
	
		select spn.id ,spn.host_id  from sql_project_name spn 
		group by spn.id  ;
	
# 39.write sql query to show fetch all records that have the term cozy in name
		
	select * from sql_project_name spn 
	#where spn.name in ('cozy')
	
# 40. write query to show price host id neighbourhood_group of manhattanneighbourhood_group

	select spn.host_id  ,spn.neighbourhood_group ,sp.price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	where spn.neighbourhood_group = 'Manhattan';
	
# 41.write query to show id , host name, neighbourhood and price but only for Upper West Side & Williamsburg neighbourhood
#    also price is greater than 100

	select spn.id,spn.host_name  ,spn.neighbourhood ,sp.price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	where spn.neighbourhood in('Upper west side', 'Williamsburg') and sp.price > 100;
	
# 42.write query to show id , host name, neighbourhood and price for
# 	 host name Elise and neighbourhood is Bedford-Stuyvesant

 	select spn.id,spn.host_name  ,spn.neighbourhood ,sp.price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	where spn.host_name = 'Elise' and spn.neighbourhood = 'Bedford-stuyvesant';
	
# 43. write query to show host_name,availability_365,minimum_nights only for 100+
#	  availability_365 and minimum_nights

	select spn.host_name  ,sp.availability_365  ,sp.minimum_nights  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	where sp.availability_365 > 100 and sp.minimum_nights > 100;
	
# 44. write query to show to fetch id ,host_name , number_of_reviews,
#	and reviews_per_month but show only that records where
# 	number of reviews are 500+ and review per month is 5+

	select spn.id  ,spn.host_name  ,sp.number_of_reviews ,sp.reviews_per_month  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	where sp.number_of_reviews > 500 and sp.reviews_per_month >5;
	
# 45. write query to show neighbourhood_group which have most total number of review

	select spn.neighbourhood_group, sum(sp.number_of_reviews)  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.neighbourhood_group ;
	
# 46. write query to show host name which have most cheaper total price

	select spn.host_name , sum(sp.price)total_price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by host_name
	order by total_price  
	limit 2;
	
	
	  
	
# 47. write query to show host name which have most costly total price

	select spn.host_name , sum(sp.price)total_price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by host_name
	order by sp.price desc 
	limit 2;
	
# 48. write query to show host name which have max price using sub￾ query

	select spn.host_name from sql_project_name spn 
	where (select  max(sp.price) from sql_project_2 sp)
;


	select spn.host_name , max(sp.price)  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	order by spn.host_name ;
	
# 49. write query to show neighbourhood_group which price are less than 100

	select spn.neighbourhood_group  , sp.price  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	where sp.price < 100 ;

# 50. write query to find max price, average availability_365 for each
#     room type and order in ascending by maximum price

	select spn.room_type , sp.availability_365 ,max(sp.price)  from sql_project_name spn 
	inner join sql_project_2 sp 
	on spn.id = sp.id 
	group by spn.room_type 
	order by max(sp.price)  ;
	
	