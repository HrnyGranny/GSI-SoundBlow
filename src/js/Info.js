/* Llamando a la función getData() */
getData()

/*elemento */

document.getElementById("campo").addEventListener("keyup", getData)

document.getElementById("num_registros").addEventListener("change", getData)


/* Peticion AJAX */
function getData() {
    let input = document.getElementById("campo").value
    let num_registros = document.getElementById("num_registros").value

    let content = document.getElementById("content")
    

    let url = "load.php"
    let formaData = new FormData()
    formaData.append('campo', input)
    formaData.append('registros', num_registros)

    fetch(url, {
            method: "POST",
            body: formaData
        }).then(response => response.json())
        .then(data => {
            content.innerHTML = data
        }).catch(err => console.log(err))
}