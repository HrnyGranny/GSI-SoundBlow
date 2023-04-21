<?php

require 'config.php';

/* Un array de las columnas a mostrar en la tabla */
$columns = ['no_emp', 'nombre', 'apellido', 'fecha_nacimiento', 'fecha_ingreso'];

/* Nombre de la tabla */
$table = "empleados";

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

/* Consulta */
$sql = "SELECT " . implode(", ", $columns) . "
FROM $table
$where ";

$resultado = $conn->query($sql);
$num_rows = $resultado->num_rows;

/* Resultado */

$html = '';

if ($num_rows > 0) {
    while ($row = $resultado->fetch_assoc()) {
        $html .= '<tr>';
        $html .= '<td>' . $row['no_emp'] . '</td>';
        $html .= '<td>' . $row['nombre'] . '</td>';
        $html .= '<td>' . $row['apellido'] . '</td>';
        $html .= '<td>' . $row['fecha_nacimiento'] . '</td>';
        $html .= '<td>' . $row['fecha_ingreso'] . '</td>';
        $html .= '</tr>';
    }
} else {
    $html .= '<tr>';
    $html .= '<td colspan="5">Sin resultados</td>';
    $html .= '</tr>';
}

echo json_encode($html, JSON_UNESCAPED_UNICODE);