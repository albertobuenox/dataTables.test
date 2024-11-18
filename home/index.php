<?php


  //Pintar el Html
  $cabecera = file_get_contents("../templates/cabecera.html");
  $cuerpo = file_get_contents("../templates/cuerpo.html");
  $pie = file_get_contents("../templates/pie.html");
  $html = $cabecera . $cuerpo . $pie;
  echo $html;
?>
