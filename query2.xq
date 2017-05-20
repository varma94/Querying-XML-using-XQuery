 for $x in doc("auction.xml")/site/regions/europe/item
return 
   <itemNameAndItemDescription>
      <itemName>{data($x/name)}</itemName>
      <itemDescription>{data($x/description)}</itemDescription>
   </itemNameAndItemDescription>