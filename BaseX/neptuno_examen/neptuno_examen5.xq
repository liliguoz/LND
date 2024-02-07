<html>
  <head><title>quinta consulta</title></head>
  <body>
  <table border='10'>
    <tr>
      <th>Referencia de artículo</th>
      <th>Nombre de artículo</th>
      <th>Referencia de proveedor</th>
      <th>Nombre de proveedor</th>
    </tr>
    {
      for $articulos in doc('neptuno_examen.xml') //articulo
      for $proveedores in doc('neptuno_examen.xml') //proveedor
      where $articulos/NombreCategoria = "Bebidas"
        and $articulos/ReferenciaProveedor = $proveedores/ReferenciaProveedor
      return
      <tr>
        <td>{data($articulos/RefArticulo)}</td>
        <td>{data($articulos/NombreArticulo)}</td>
        <td>{data($proveedores/ReferenciaProveedor)}</td>
        <td>{data($proveedores/NombreProveedor)}</td>
      </tr>
    }
  </table>
  </body>
</html>
