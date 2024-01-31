<html>
    <head>
    <title> Consulta </title>
    </head>
  <body>
    <table border="20">
      <tr>
        <td> Título </td> 
        <td> Precio </td> 
      </tr>
      {
        for $book in doc("books.xml")//catalog/book
        where $book/number(price) > 20
        return
          <tr>
            <td>{$book/title}</td>
            <td>{$book/price}</td>
          </tr>
      }
    </table>
  </body>
</html>