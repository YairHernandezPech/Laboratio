//Aqui obntengo el id del div y lo guardo en una variable
let cuadrosContainer = document.querySelector("#cuadrosContainer");
let CantidadCuadro = 1;
let contDis = CantidadCuadro;
let contNodis = 0;
let nuevoEstado = " ";

//En este function clonamos el cuadro original y aumentamos segundo lo que nos digan la variable CantidadCuadro
function cloncuadros() {
    try {
        cuadrosContainer.innerHTML = "";
        contDis = CantidadCuadro;
        contNodis = 0;

        for (let i = 1; i <= CantidadCuadro; i++) {
            let clonCuadro = document.createElement("div");
            clonCuadro.className = "cuadro";

            // Añadir el tooltip al cuadro clonado
            let tooltip = document.createElement("span");
            tooltip.className = "tooltip";
            clonCuadro.appendChild(tooltip);

            clonCuadro.innerHTML += i;
            clonCuadro.onclick = function () {
                Color(this, i);
            }
            cuadrosContainer.appendChild(clonCuadro);

            consumoAPi(i);
        }
    } catch (error) {
        console.log(error);
    }
}



//Esta funcion nos sirve para cambiar de color
async function Color(cuadro, i) {
    try {

        let color = window.getComputedStyle(cuadro).getPropertyValue("background-color");
        //Aqui comparamos si el color es igual al que esta por de fault que viene siendo ver entonces se pasar a gris
        if (color === "rgb(0, 128, 0)") {
            cuadro.style.backgroundColor = "grey";
            cuadro.querySelector(".tooltip").innerHTML = "Asiento fuera de servicio";
            //Si la condicion se cumple al contador contNodis se estara sumando uno por uno y a la variable  contDis se le restara uno por uno
            contNodis++;
            contDis--;
            nuevoEstado = "Asiento Fuera de servicio";
            

        } else {
            //De caso lo contrario si no es igual a gris pasar a color verde
            cuadro.style.backgroundColor = "green";
            cuadro.querySelector(".tooltip").innerHTML = "Asiento Disponible";
            //Si la condicion se cumple al la variable contNodis se estara restando uno por uno y a la variable  contDis se le sumara uno por uno
            contNodis--;
            contDis++;
            nuevoEstado = "Asiento Disponible";
        }

        //Aqui primero obtenemos el id de los h1 despues agregamos el texto junto con las variables contadores que viene siendo contDis y contNodis
        document.querySelector("#dispnible").innerHTML = "Asientos Disponibles " + contDis;
        document.querySelector("#Nodisponible").innerHTML = "Asientos Fuera de servicio " + contNodis;

        await ActualizarAPi(i,nuevoEstado);
        
    } catch (error) {
        console.log(error);
    }
}

//Funcion para manejar la cantidad de cuadros con el formulario
function cntCuadros() {
    try {
        Newvalorcuadro = document.querySelector("#cndCuadros").value;
        if (Newvalorcuadro > 0) {
            Newvalorcuadro = document.querySelector("#cndCuadros").value;
            CantidadCuadro = Newvalorcuadro;
            contDis = CantidadCuadro;
            document.querySelector("#dispnible").innerHTML = "Asientos Disponibles " + CantidadCuadro;
            document.querySelector("#Nodisponible").innerHTML = "Asientos Fuera de servicio " + 0;

            cloncuadros();
        } else {
            alert("Ingrese un numero valido")
        }


    } catch (error) {
        console.log(error);
    }

}

//En esta funcion consumo la api luego lo muesto al tooltip segun el id correspontiente a cada cuadrito
async function consumoAPi(idpc) {
    try {
        let url = `http://localhost/api/controller/pc.controller.php/${idpc}`;
    fetch(url)
        .then((res) => res.json())
        .then((data) => mostrarData(idpc, data))
        .catch((error) => console.log(error));

         const mostrarData = async (idpc, data) => {

        if (data.length > 0) {
            let body = "";
            for (let i = 0; i < data.length; i++) {
                
                body += `Id: ${data[i].id} Nombre: ${data[i].nombre} Modelo: ${data[i].modelo} Numero de serie: ${data[i].nserie} Teclado: ${data[i].teclado} Mouse: ${data[i].mouse} Observacion: ${data[i].observacion} id_Estado: ${data[i].id_estado} Estado: ${data[i].estado}`;
                
            }

            let cuadro = document.querySelector(`.cuadro:nth-child(${idpc})`);
            cuadro.querySelector('.tooltip').innerHTML = body;
        }
    
    };
    } catch (error) {
        console.log(error)
    }
    
}

//Funcion para Actualizar El estado
async function ActualizarAPi( id, nuevoEstado){
    console.log(nuevoEstado);
    const datosActualizacion = {
        estado: nuevoEstado,
    };
  
    let url = `http://localhost/api/controller/estado.controller.php/${id}/${id}`;

    try {
        let data = await fetch(url,{
            method: "PUT",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(datosActualizacion),
        });
        await consumoAPi()
    } catch (error) {
        console.log(error);
    }
}