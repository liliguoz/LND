for $b in doc("books.xml") //Book
let $c:= $b/author

return
  <libro>{$b/title, <autores>{count($c)}</autores>}</libro>