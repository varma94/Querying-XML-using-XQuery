for $x in doc("auction.xml")/site/regions/*/item
order by $x/name ascending
return <nameAndLocation>
        <itemName>{data($x/name)}</itemName>
        <itemLocation>{data($x/location)}</itemLocation>
       </nameAndLocation>