<htlm>
  <head> <title> primera consulta </title></head>
  <body>
    <table border="15">
      <tr>
        <td>Referencia de artículos</td>
        <td>Nombre de artículos</td>
        <td>Refererencia proveedor</td>
        <td>Nombre de proveedor</td>
        <td></td>
      </tr>
      {
        for $articulos in doc("neptuno.xml") //articulos
        for $proveedores in doc("neptuno.xml") //proveedores
        where $articulos/ReferenciaProveedor="100"
          and $articulos/ReferenciaProveedor=$proveedores/ReferenciaProveedor
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
</htlm>