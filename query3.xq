for $x in doc("auction.xml")/site/people/person
 let $e := $x/@id
 return
	     <personNameAndItemBought>
	      <personName>{data($x/name)}</personName>
	      <itemsBought>{count(doc("auction.xml")/site/closed_auctions/closed_auction[buyer/@person=$e])}</itemsBought>
	     </personNameAndItemBought>
		 