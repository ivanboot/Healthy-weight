<cfoutput>

    <article id="informacion">
        <h1>¿Como medir e interpretar el estado del peso?</h1>
        <p>Mucha grasa corporal puede provocar enfermedades relacionadas con el peso y otros problemas de salud. 
        Tener bajo peso también es un riesgo para la salud. El índice de masa corporal (IMC) 
        es una herramientas de detección para estimar el estado de peso en relación con el riesgo potencial de enfermedad. 
        Sin embargo, no es una herramientas de diagnóstico para los riesgos de enfermedad. Un proveedor de atención médica capacitado debe 
        realizar otras evaluaciones de salud para evaluar el riesgo de enfermedad y diagnosticar el estado de la enfermedad.</p>
        
        <img id="apple" src="includes/images/manzana.png">

        <h1>Indice de masa corporal o IMC</h1>
        <p>El IMC es el peso de una persona en kilogramos dividido por el cuadrado de la estatura en metros. 
        Un IMC alto puede indicar una grasa corporal alta y un IMC bajo puede indicar una grasa corporal demasiado baja. 
        Para calcular su IMC, consulte la Calculadora de IMC.</p>
    
        <div id="alertas">
            <ul>
                <li id="error altura"><span>Altura: </span> Dato numerico requerido</li>
                <li id="error peso"><span>Peso: </span> Dato numerico requerido</li>
                <li id="error edad"><span>Edad: </span> Dato numerico requerido</li>
            </ul>
        </div>
        <div class="calculadora">
            <form name="imc" action="#event.buildLink(to="health.IMC")#" method="POST">
                <table>
                    <tr>
                        <th colspan="2">Calculadora IMC</th>
                    </tr>
                    <tr>
                        <td>Unidades:</td>
                        <td><input type="radio" name="unidades" value="SM" checked>kg/m^2
                            <input type="radio" name="unidades" value="SI">lb/in^2</td>
                    </tr>
                    <tr>
                        <td>Altura: </td>
                        <td><input type="text" id="altura" name="altura" autocomplete="off"></td>
                    </tr>
                    <tr>
                        <td>Peso:</td>
                        <td><input type="text" id="peso" name="peso" autocomplete="off"></td>
                    </tr>
                    <tr>
                        <td>Edad:</td>
                        <td><input type="text" id="edad" name="edad" autocomplete="off"></td>
                    </tr>
                    <tr>
                        <td>Genero:</td>
                        <td>
                            <input type="radio" name="genero" value="H" checked>Hombre
                            <input type="radio" name="genero" value="M">Mujer
                        </td>
                    </tr>
                    <tr>
                        <!-- <td colspan="2"><button type="submit">Calcular</button></td>
                        -->
                        <td colspan="2"><input type="button" value="Calcular" onClick="calculoIMC()"></td>
                    </tr>
                </table>
            </form>
        </div>

    </article>
<script src="includes/js/javascript.js"></script>
</cfoutput>