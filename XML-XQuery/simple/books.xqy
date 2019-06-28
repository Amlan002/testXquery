for $x in doc("books.xml")/books/book
where $x/price>30
return $x/title



<!--

for $books in /books/book
where $books/author="Robert"
return <results><table><tr><th>Title</th><th>Price</th></tr>
{
   for $x in $books   
   order by $x/price
   return <tr><td>{data($x/title)}</td><td>{data($x/price)}</td></tr>
}
</table>
</results>





for $x in /books/book
where $x/price>30
return $x/title


let $books := (/books/book)
return <results>
{
   for $x in $books
   where $x/price>=30
   order by $x/price
   return $x/title
}
</results>


let $books := (/books/book)
return <results>
{
   for $x in $books
   let $details := concat($x/title," ",$x/price)
   where $x/price>30 
   order by $x/price
   return $details 
}
</results>


let $books := (/books/book)
return <results><table><tr><th>Title</th><th>Price</th></tr>{
   for $x in $books   
   order by $x/price
   return <tr><td>{data($x/title)}</td><td>{data($x/price)}</td></tr>
}
</table>
</results>

let $books := /books/book
for $x in $books
where $x/price > 30
return $x/title

let $books := /books/book[author="Robert"]
for $x in $books
return $x/title

let $items := ('orange', <apple/>, <fruit type="juicy"/>, <vehicle type="car">sentro</vehicle>, 1,2,3,'a','b',"abc")
let $count := count($items)
return
<result>
   <count>{$count}</count>
   
   <items>
      {
	     for $item in $items
         return <item>{$item}</item>
      }
   </items>
   
</result>


let $items := (1,2,3,4,5,6)
let $count := count($items)
return
   <result>
      <count>{$count}</count>
      
      <items>
      {
         for $item in $items[2]
         return <item>{$item}</item>
      }
      </items>
      
   </result>
   
   let $items := (1,2,3,4,5,6)
let $count := count($items)
return
   <result>
      <count>{$count}</count>
      
      <items>
      {
         for $item in $items[. = (1,2,3)]
         return <item>{$item}</item>
      }
      </items>
      
   </result>
   
   
 for $author in distinct-values(/books/book/author) return
<MYBOOKS>
<AUTHOR NAME="{ $author }">
{for $book in (/books/book)
where $book/author=$author
return <details>
<title>{data($book/title)}</title>
<price>{data($book/price)}</price>
<year>{data($book/year)}</year>
</details>
}
</AUTHOR>
</MYBOOKS>








   


-->