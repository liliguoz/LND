<htlm>
  <head> <title> primera consulta </title></head>
  <body>
    <table border="15">
      <tr>
        <td>Referencia de artículos</td>
        <td>Referencia de proveedor</td>
        <td>Nombre de artículo</td>
      </tr>
      {
        for $articulos in doc("neptuno.xml") //articulos 
        return 
          <tr>
            <td>{data($articulos/RefArticulo)}</td>
            <td>{data($articulos/ReferenciaProveedor)}</td>
            <td>{data($articulos/NombreArticulo)}</td>
          </tr>
      }
    </table>
  </body>
</htlm>