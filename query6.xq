for $item in doc("auction.xml")/site/closed_auctions/closed_auction
 for $x in doc("auction.xml")/site/regions/europe
 return {
    if($x/item[@id=$item/itemref/@item]/name) then
      <nameOfPersonAndItem>
        <personName>{data(doc("auction.xml")/site/people/person[@id=$item/buyer/@person]/name)}</personName>
        <itemNameEurope>{data($x/item[@id=$item/itemref/@item]/name)}</itemNameEurope>
       </nameOfPersonAndItem>
      else()
    }