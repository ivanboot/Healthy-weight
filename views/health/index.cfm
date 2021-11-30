<cfoutput>

    <article id="informacion">
        <h1>&iquest;C&oacute;mo medir e interpretar el estado del peso?</h1>
        <p>Mucha grasa corporal puede provocar enfermedades relacionadas con el peso y otros problemas de salud. 
        Tener bajo peso tambi&eacute;n es un riesgo para la salud. El &Iacute;ndice de masa corporal (IMC) 
        es una herramientas de detecci&oacute;n para estimar el estado de peso en relaci&oacute;n con el riesgo potencial de enfermedad. 
        Sin embargo, no es una herramientas de diagn&oacute;stico para los riesgos de enfermedad. Un proveedor de atenci&oacute;n m&eacute;dica capacitado debe 
        realizar otras evaluaciones de salud para evaluar el riesgo de enfermedad y diagnosticar el estado de la enfermedad.</p>
        
        <img class="imagen" src="includes/images/manzana.png">

        <h1>&Iacute;ndice de masa corporal o IMC</h1>
        <p>El IMC es el peso de una persona en kilogramos dividido por el cuadrado de la estatura en metros. 
        Un IMC alto puede indicar una grasa corporal alta y un IMC bajo puede indicar una grasa corporal demasiado baja. 
        Para calcular su IMC, consulte la Calculadora de IMC.</p>
    
        <div id="alertas">
            <ul>
                <li id="error altura"><span>Altura: </span> Dato num&eacute;rico v&aacute;lido requerido</li>
                <li id="error peso"><span>Peso: </span> Dato num&eacute;rico v&aacute;lido requerido</li>
                <li id="error edad"><span>Edad: </span> Dato num&eacute;rico v&aacute;lido requerido</li>
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