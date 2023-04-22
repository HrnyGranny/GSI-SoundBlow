<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SoundBlow</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <nav>
      <h1>Sound Blow</h1>
      <ul>
        <li><a href="#home">Home</a></li>
        <li><a href="#Data">Data</a></li>
      </ul>
    </nav>
    <section id="home">
      <div class="container">
        <div>
          <div>
            <label for="input">Introduce información de una canción...</label>
          </div>
          <div>
            <input type="text" name="campo" id="campo" placeholder="">
          </div>
        </div>
      </div>
    </section>

    <section id="Data">

      <table>
        <thead>
          <th>Canción</th>
          <th>Artista</th>
          <th>Album</th>
          <th>Fecha</th>
          <th>Duración</th>
        </thead>

        <tbody id="content">
        
        </tbody>

      </table>
      
    </section>
    <script src="js/TopDownBar.js"></script>
    <script src="js/Info.js"></script>
  </body>
</html>
