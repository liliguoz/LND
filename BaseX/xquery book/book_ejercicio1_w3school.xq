for $x in doc("books.xml")/catalog/book/title
order by $x
return $x 