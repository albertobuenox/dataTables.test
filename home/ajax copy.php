<?php

    
    $requestData= $_REQUEST;
    $draw = $_POST['draw'];
    $row = $_POST['start'];
    $rowperpage = $_POST['length']; // Rows display per page
    $columnIndex = $_POST['order'][0]['column']; // Column index
    $columnName = $_POST['columns'][$columnIndex]['data']; // Column name
    $columnSortOrder = $_POST['order'][0]['dir']; // asc or desc
    $search_values = $requestData['search']['value'];
    $search_values_array = explode(',', $search_values);
    

    // Conectar a la base de datos
    $dbName = "BBDD_Test";
    $host = "localhost";
    $dbUserName = "root";
    $dbPass = "root";

    $bbdd = mysqli_connect($host, $dbUserName, $dbPass, $dbName);

    // Verificar conexión a la base de datos
    if (!$bbdd) {
        die("<span style='color:red'>Conexión a la BBDD fallida:</span> " . mysqli_connect_error());
    }
    //echo "<b style='color:green'>Conexión exitosa a la base de datos: </b>" . $dbName;

    // Preparar la query
    $sql = "SELECT * FROM Personas ";
    $sql.= " LIMIT ".$requestData['start'].", ".$requestData['length']." ";
    $result = mysqli_query($bbdd, $sql);

    $totalRecords = $result->num_rows;


    //
    if (mysqli_num_rows($result) < 1) {
        $data[0] = array(  
        "Nombre"		=> "",
        "Apellidos"		=> "",
        "CodigoPostal"		=> "",
        "Direccion"		=> "",
        "Sexo"		=> ""
        );
    }

    $i=0;
    //Preparar array $data[]
    while ($lineas_registro = mysqli_fetch_array($result)) {
         $data[]= array (
            "Nombre" => $lineas_registro["Nombre"],
            "Apellidos" => $lineas_registro["Apellidos"],
            "CodigoPostal" => $lineas_registro["CodigoPostal"],
            "Direccion" => $lineas_registro["Direccion"],
            "Sexo" => $lineas_registro["Sexo"]
         );
         $i++;

    }
    
    mysqli_free_result($result);
    mysqli_close($bbdd);

    //Salida JSON
    $response = array(
        "draw" => 1,
        "iTotalRecords" => $totalRecords,
        "iTotalDisplayRecords" => $totalRecords,
        "aaData" => $data
          );       
    $salida = json_encode($response);
    echo $salida;

?>
