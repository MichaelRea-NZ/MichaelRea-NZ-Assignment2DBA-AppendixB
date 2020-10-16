use stockauction;

drop view sheep_lots_sold_2020_view;
create view sheep_lots_sold_2020_view as
select ACB.fullName as Buyer
from sheeplot SL inner join auctionclientatauction ACAB on SL.buyer = ACAB.clientNumber
		  inner join auctionclient ACB on ACAB.clientID = ACB.id
                  
 where auctionDay = 1620 and passedIn is null;
 
 select * from sheep_lots_sold_2020_view
 group by buyer;
