for $y in doc("auction.xml")/site/people/person
  for $x in distinct-values($y/profile/interest/@category)
  let $d := $x
  group by $d
  return 
     <personsPerCategory>
        <category>{data(distinct-values($x))}</category>
        <sizeOfCategory>{data(count($x))}</sizeOfCategory>
     </personsPerCategory>