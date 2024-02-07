<htlm>
  <head> <title> primera consulta </title></head>
  <body>
  <table border="15">
    <tr>
      <td>Referencia del artículos</td>
      <td>Referencia del proveedor</td>
      <td>Nombre de artículo</td>
      <td>Categoría de artículo</td>
      <td>Precio unidad artículo</td>
      <td>Unidades de artículo</td>
    </tr>
    {
      for $articulos in doc("neptuno_examen.xml") //articulo
      where $articulos/NombreCategoria="Bebidas"
      return
        <tr>
          <td>{data($articulos/RefArticulo)}</td>
          <td>{data($articulos/ReferenciaProveedor)}</td>
          <td>{data($articulos/NombreArticulo)}</td>
          <td>{data($articulos/NombreCategoria)}</td>
          <td>{data($articulos/PrecioUnidad)}</td>
          <td>{data($articulos/UnidadesExistencia)}</td>
        </tr>
    }
  </table> 
  </body>
</htlm>
