<htlm>
  <head> <title> primera consulta </title></head>
  <body>
    <table border="15">
      <tr>
        <td>Referencia del cliente</td>
        <td>Nombre del cliente</td>
        <td>Refererencia artículo</td>
        <td>Nombre de categoria</td>
        <td></td>
      </tr>
      {
        for $articulos in doc("neptuno.xml") //articulos
        for $cliente in doc("neptuno.xml") //clientes
        where $articulos/NombreCategoria="bebidas"
          and $articulos/RefPedido=$cliente/RefPedido
        return 
          <tr>
            <td>{data($cliente/RefCliente)}</td>
            <td>{data($cliente/NombreCliente)}</td>
            <td>{data($articulos/RefArticulo)}</td>
            <td>{data($articulos/NombreCategoria)}</td>
          </tr>
      }
    </table>
  </body>
</htlm>