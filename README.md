# SoundBlow
Mejor buscador de información de canciones.

# Integrantes
Carlos Ordoño Moraleda: Backend

Álvaro Ruiz Roldán: Frontend y Backend

# Requisitos

-Tener mySQL-service instalado

-Tener mySQL Workbench o similar para conectar la base de datos.

-Tene Apache o similar para cargar la pag web (En mi caso use XAMPP)

# Instrucciones de uso

-Descargar proyecto

-Crear base de datos (almacen) e importar archivo ```almacen.sql```

-Cambiar los datos de acceso en ```config.php``` (PASSWORD) y (almacen si cambias el nombre de la conexion en mySQL workbench)



```php
<?php

/* Creando una nueva conexión a la base de datos. */
$conn = new mysqli("127.0.0.1", "root", "PASSWORD", "almacen");

/* Comprobando si hay un error de conexión. */
if ($conn->connect_error) {
    die('Error de conexion ' . $conn->connect_error);
}
```

-Colocar la carpeta src en la carpeta htdocs de Apache

-Lanzar ```index.html```


# LabBook
## 1 de Abril

Desarrollamos las bases del proyecto, buscando información al respecto.

## 8 de Abril

Se desarrolla la página web del proyecto.

## 15 de Abril

Se desarrolla una base de datos inicial con una estructura que servira para su posterior ampliación.

## 22 de Abril

Finalización del proyecto en cuestión, con la base de datos actualizada y con el front-end y back-end terminados.
