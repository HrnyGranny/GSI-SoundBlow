<?php

require 'config.php';

/* Un array de las columnas a mostrar en la tabla */
$columns = ['cancion', 'artista', 'album', 'fecha', 'duracion'];

/* Nombre de la tabla */
$table = "canciones";

$campo = isset($_POST['campo']) ? $conn->real_escape_string($_POST['campo']) : null;

/* Filtrado */
$where = '';

if ($campo != null) {
    $where = "WHERE (";

    $cont = count($columns);
    for ($i = 0; $i < $cont; $i++) {
        $where .= $columns[$i] . " LIKE '%" . $campo . "%' OR "; //Cambiar
    }
    $where = substr_replace($where, "", -3);
    $where .= ")";
}

/* Limit */

$limit = isset($_POST['registros']) ? $conn->real_escape_string($_POST['registros']) : 10;

$sLimit = "LIMIT $limit";

/* Consulta */
$sql = "SELECT " . implode(", ", $columns) . "
FROM $table
$where
$sLimit ";
$resultado = $conn->query($sql);
$num_rows = $resultado->num_rows;

/* Resultado */

$html = '';

if ($num_rows > 0) {
    while ($row = $resultado->fetch_assoc()) {
        $html .= '<tr>';
        $html .= '<td>' . $row['cancion'] . '</td>';
        $html .= '<td>' . $row['artista'] . '</td>';
        $html .= '<td>' . $row['album'] . '</td>';
        $html .= '<td>' . $row['fecha'] . '</td>';
        $html .= '<td>' . $row['duracion'] . '</td>';
        $html .= '</tr>';
    }
} else {
    $html .= '<tr>';
    $html .= '<td colspan="5">Sin resultados</td>';
    $html .= '</tr>';
}

echo json_encode($html, JSON_UNESCAPED_UNICODE);