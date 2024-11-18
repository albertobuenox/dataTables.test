<?php
$requestData = $_REQUEST;

// Parámetros enviados por DataTables
$draw = $requestData['draw']; // Número de solicitud (contador)
$row = $requestData['start']; // Índice de la primera fila
$rowperpage = $requestData['length']; // Número de filas por página
$searchValue = $requestData['search']['value']; // Valor de búsqueda global
$columnIndex = $requestData['order'][0]['column']; // Índice de la columna para ordenar
$columnSortOrder = $requestData['order'][0]['dir']; // Orden ascendente o descendente
$columns = $requestData['columns']; // Columnas de la tabla

// Conectar a la base de datos
$dbName = "BBDD_Test";
$host = "localhost";
$dbUserName = "root";
$dbPass = "root";

$bbdd = mysqli_connect($host, $dbUserName, $dbPass, $dbName);

// Verificar conexión
if (!$bbdd) {
    die(json_encode(["error" => "Error de conexión a la base de datos: " . mysqli_connect_error()]));
}

// Nombre de la columna para ordenar
$columnName = $columns[$columnIndex]['data'];

// Contar el total de registros sin filtrar
$sql = "SELECT COUNT(*) AS total FROM Personas";
$totalResult = mysqli_query($bbdd, $sql);
$totalRecords = mysqli_fetch_assoc($totalResult)['total'];

// Filtro global (búsqueda)
$searchQuery = "";
if (!empty($searchValue)) {
    $searchQuery = " WHERE Nombre LIKE '%$searchValue%' 
                     OR Apellidos LIKE '%$searchValue%' 
                     OR CodigoPostal LIKE '%$searchValue%' 
                     OR Direccion LIKE '%$searchValue%' 
                     OR Sexo LIKE '%$searchValue%'";
}

// Contar los registros filtrados
$sql = "SELECT COUNT(*) AS total FROM Personas $searchQuery";
$filteredResult = mysqli_query($bbdd, $sql);
$totalFilteredRecords = mysqli_fetch_assoc($filteredResult)['total'];

// Obtener los datos filtrados con paginación y ordenamiento
$sql = "SELECT id, Nombre, Apellidos, CodigoPostal, Direccion, Sexo FROM Personas $searchQuery 
        ORDER BY $columnName $columnSortOrder 
        LIMIT $row, $rowperpage";
$dataResult = mysqli_query($bbdd, $sql);

// Crear el array de datos
$data = [];
while ($row = mysqli_fetch_assoc($dataResult)) {
    $data[] = [
        "id" => $row['id'],
        "Nombre" => $row['Nombre'],
        "Apellidos" => $row['Apellidos'],
        "CodigoPostal" => $row['CodigoPostal'],
        "Direccion" => $row['Direccion'],
        "Sexo" => $row['Sexo']
    ];
}

// Construir la respuesta JSON para DataTables
$response = [
    "draw" => intval($draw),
    "recordsTotal" => $totalRecords,
    "recordsFiltered" => $totalFilteredRecords,
    "data" => $data,
];

// Enviar respuesta al cliente
echo json_encode($response);
?>
