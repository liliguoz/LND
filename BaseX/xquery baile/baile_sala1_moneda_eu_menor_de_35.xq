for $baile in doc("baile.xml") //bailes/baile
where $baile/sala[text()=103 and ../precio/@moneda="Dolares" and ../number(precio)<98]
return $baile/nombre/text()