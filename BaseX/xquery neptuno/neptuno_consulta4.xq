<htlm>
  <head> <title> primera consulta </title></head>
  <body>
    <table border="15">
      <tr>
        <td>Nombre cliente</td>
        <td>Nombre de artículos</td>
        <td>Nombre de proveedor</td>
        <td></td>
      </tr>
      {
        for $articulos in doc("neptuno.xml") //articulos
        for $proveedores in doc("neptuno.xml") //proveedores
        for $clientes in doc ("neptuno.xml") //clientes
        where $articulos/NombreCategoria="bebidas"
          and $articulos/ReferenciaProveedor=$proveedores/ReferenciaProveedor and $clientes/RefPedido=$articulos/RefPedido
        return 
          <tr>
            <td>{data($clientes/NombreCliente)}</td>
            <td>{data($articulos/NombreArticulo)}</td>
            <td>{data($proveedores/NombreProveedor)}</td>
          </tr>
      }
    </table>
  </body>
</htlm>