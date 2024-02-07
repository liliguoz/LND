<html>
  <head><title>cuarta consulta</title></head>
  <body>
  <table border='10'>
    <tr>
      <th>Referencia de pedidos</th>
      <th>Referencia de cliente</th>
      <th>Referencia artículo</th>
      <th>Fecha de los pedido</th>
    </tr>
    {
      for $clientes in doc("neptuno_examen.xml") //cliente
      for $articulos in doc("neptuno_examen.xml") //articulo
      where $clientes/RefCliente = "PICCO"
      and $articulos/RefArticulo = $clientes/RefArticulo
      return
      <tr>
        <td>{data($clientes/RefCliente)}</td>
        <td>{data($clientes/NombreCliente)}</td>
        <td>{data($clientes/CiudadCliente)}</td>
        <td>{data($clientes/DireccionCliente)}</td>
      </tr>
    }
  </table>
  </body>
</html>