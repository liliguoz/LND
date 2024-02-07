<html>
  <head><title>tercera consulta</title></head>
  <body>
  <table border='10'>
    <tr>
      <th>Referencia de cliente</th>
      <th>Nombre de cliente</th>
      <th>Ciudad del cliente</th>
      <th>Dirección del cliente</th>
    </tr>
    {
      for $clientes in doc ("neptuno_examen.xml") //cliente
      where $clientes/CiudadCliente = "Madrid"
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

