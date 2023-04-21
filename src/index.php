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
            <label for="input">Searching for...</label>
          </div>
          <div>
            <input type="text" name="campo" id="campo" placeholder="">
          </div>
        </div>
          
        <div>
          <div>
            <label for="opcion">About...</label>
          </div>
          <div>
            <select id="opcion" name="opcion">
              <option value="Song">Song</option>
              <option value="Album">Album</option> 
              <option value="Artist">Artist</option>   
            </select>
          </div>
        </div>
          
      <div id="lastDiv">
        <div></div>
        <div>
          <button type="submit" id="search">Search</button>
        </div>
      </div>
        
      </div>
    </section>

    <section id="Data">

      <table>
        <thead>
          <th>Num. empleado</th>
          <th>Nombre</th>
          <th>Apellido</th>
          <th>Fecha nacimiento</th>
          <th>Fecha ingreso</th>
        </thead>

        <tbody id="content">
        
        </tbody>

      </table>
      
    </section>
    <script src="js/TopDownBar.js"></script>
    <script src="js/Info.js"></script>
  </body>
</html>
