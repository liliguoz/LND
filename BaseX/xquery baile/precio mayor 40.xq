for $baile in doc("baile.xml") //bailes/baile
where number ($baile/precio) > 40
return 
<baile>
<nombre>{$baile/nombre/text()}</nombre>
<precio>{$baile/precio/text()}</precio>
</baile>