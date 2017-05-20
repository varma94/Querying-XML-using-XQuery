for $item in doc("auction.xml")/site/categories/category
 for $x in doc("auction.xml")/site/people/person 
 where $x/profile/interest/string(@category) = $item/string(@id)
return <personsAccordingToTheirInterest>
         <personCategory>{data($item/string(@id))}</personCategory>
         <personName>{data($x/name)}</personName>
       </personsAccordingToTheirInterest>