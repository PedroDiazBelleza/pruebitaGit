
$(document).ready(function () {
    //cuando se escriba caracteres en la caja de texto  
    $(document).on('keyup', '#txtnom', function () {
        let valor = $(this).val();
        listado(valor);

    });

    function listado(consultaCliente) {
        opc = "31";
        $.get("control", {opc, consultaCliente}, (response) => {
            const misDatos = JSON.parse(response);//recuperar la informacion q envio el controlador  
            let template = "";
            console.log(misDatos); //para ver si vienen los datos

            template += `  
           <h2>Productos de tendencia</h2> 
            <div style="display:grid; justify-content: space-evenly; grid-template-columns: auto auto auto;">`;
            misDatos.forEach(midato => {
                template += `  
                <div style="background: white;display:grid;width:200px; height: 300px; margin:2rem; border-radius:16px">
                    <div class="img_prod">
                        <img style="border: 2px solid black; margin: 10px; border-radius:16px" src="Imagenes/prod${midato.cod_prod}.jpeg" width="100" height="100" alt="alt"/>
                    </div>
                    <div class="nom_prod">
                        <h3>${midato.nom_prod}</h3>
                    </div>
                    <div class="act_prod">
                        <button style="background: #0099E1; border: 0; border-radius:16px; width:70%; color: white" onclick="window.location='control?opc=23&codProd=${midato.cod_prod}&codProv=${midato.cod_prov}'" >Comprar ahora</button>
                    </div>
                </div>`;
            })
            template += `</div>`;

            $("#productos").html(template);

        })
    } //fin de listado 

})


