for $item in doc("auction.xml")/site/open_auctions/open_auction
return {
if(index-of($item/bidder/personref/@person,'person3') < index-of($item/bidder/personref/@person,'person6')) then 
  <reservePrice>{$item/reserve}</reservePrice>
else()
}