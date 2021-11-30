<cfoutput>    
    <article id="informacion">
        <h1>Resultados del calculo de IMC</h1> 
        <h1>IMC: #prc.imc#</h1>
        <h1>Peso ideal: #prc.pesoideal# kg o #prc.pesoideal*2.205# lb</h1>      
        <section class="tablaIMC">
            <table>
                <th>
                    IMC
                </th>
                <th>
                    Clasificaci&oacute;n
                </th>
                <cfscript>
                    imc=['Debajo de 18.5','18.6 - 24.99','25 - 29.99','30 o mas'];
                    clasificacion= ['Bajo peso','Peso normal','Sobrepeso','Obesidad'];
                    resultado="";
                    if(prc.imc<=18.5){
                        writeOutput("<tr style='background-color:darkgrey;'><td style='color: white;'>#imc[1]#</td><td style='color: white;'>#clasificacion[1]#</td></tr>");
                        resultado=imc[1];
                    }else{writeOutput("<tr><td>#imc[1]#</td><td>#clasificacion[1]#</td></tr>");}
                    
                    if(prc.imc>18.5 && prc.imc<=24.99){
                        writeOutput("<tr style='background-color:darkgrey;'><td style='color: white;'>#imc[2]#</td><td style='color: white;'>#clasificacion[2]#</td></tr>");
                        resultado=imc[2];
                    }else{writeOutput("<tr><td>#imc[2]#</td><td>#clasificacion[2]#</td></tr>");}

                    if(prc.imc>24.99 && prc.imc<=29.99){
                        writeOutput("<tr style='background-color:darkgrey;'><td style='color: white;'>#imc[3]#</td><td style='color: white;'>#clasificacion[3]#</td></tr>");
                        resultado=imc[3];
                    }else{writeOutput("<tr><td>#imc[3]#</td><td>#clasificacion[3]#</td></tr>");}

                    if(prc.imc>29.99){
                        writeOutput("<tr style='background-color:darkgrey;'><td style='color: white;'>#imc[4]#</td><td style='color: white;'>#clasificacion[4]#</td></tr>");
                        resultado=imc[4];
                    }else{writeOutput("<tr><td>#imc[4]#</td><td>#clasificacion[4]#</td></tr>");}                    
                </cfscript>
            </table>
            <cfif resultado==imc[1]>
                <h1>Bajo peso</h1>
                <img class="imagen" src="includes/images/excesivo.jpg">
                <p>
                    Un imc de #prc.imc# indica una categoria de bajo peso. <br>
                    Se encuentra debajo del rango recomendado, es importante para la salud mantenerse bien alimentado.<br>
                    Entre los problemas que se pueden desarrollar debido al bajo peso se encuentran:
                    <ul>
                        <li>Bajas defensas: provoca que el paciente sea m&aacute;s propenso a adquirir enfermedades diversas</li>
                        <li>Anemia: personas con bajo peso tienden a desarrollarla debido a la falta de hierro en la alimentaci&oacute;</li>
                        <li>Problemas del coraz&oacute;n: el paciente tiene m&aacute;s riesgo de morir por enfermedades coronarias</li>
                        <li>Osteoporosis: consiste en la falta de calcio, un nutriente el cual se encarga de fortalecer los huesos, vuelve al paciente propenso a sufrir fracturas</li>
                    </ul>
                    
                    Seg&uacute;n su estatura y edad su peso ideal deberia ser aproximadamente de #prc.pesoideal# kg o #prc.pesoideal*2.205# lb <br>
                    Para m&aacute;s Informaci&oacute;n sobre c&oacute;mo combatir el bajo peso leer el siguiente art&iacute;culo sobre el tema<br>
                    <a href="https://www.tuasaude.com/es/dieta-para-subir-de-peso/" target="_blank" rel="noopener noreferrer">https://www.tuasaude.com/es/dieta-para-subir-de-peso/</a> 

                </p>
            <cfelseif resultado==imc[2]>
                <h1>Peso normal</h1>
                <img class="imagen" src="includes/images/ideal.jpg">
                <p>
                    Un imc de #prc.imc# indica una categoria normal de peso. <br>
                    Para su estatura y edad su peso ideal deberia ser aproximadamente de #prc.pesoideal# kg o #prc.pesoideal*2.205# lb <br>
                    Mantenerse con un peso saludable puede reducir el riesgo de enfermedades cr&oacute;nicas asociadas al sobrepeso u obesidad
                </p>
            <cfelse>
                <cfif resultado==imc[3]>
                    <h1>Sobrepeso</h1>                
                <cfelse>
                    <h1>Obesidad</h1>                
                </cfif>   
                <img class="imagen" src="includes/images/dieta.jpg">
                <p>
                    Un imc de #prc.imc# indica una categoria de sobrepeso. <br>
                    Para su estatura y edad su peso ideal deberia ser aproximadamente de #prc.pesoideal# kg o #prc.pesoideal*2.205# lb <br>
                    Las personas con sobrepeso u obesdiad tienen un mayor riesgo de padecer enfermedades tales como:
                    <ul>
                        <li>Presi&oacute;n arterial alta: provoca que el paciente sea m&aacute;s propenso a adquirir enfermedades diversas</li>
                        <li>Niveles altos de colesterol y triglic&eacute;ridos: personas con bajo peso tienden a desarrollarla debido a la falta de hierro en la alimentaci&oacute;</li>
                        <li>Insuficiencia card&iacute;aca y ataques cardiacos</li>
                        <li>Apnea del sue&ntilde;o: dejar de respirar durante el sue&ntilde;o, lo que puede causar fatiga o somnolencia diurna</li>
                        <li>Problemas &oacute;seos y articulares: el peso ejerce presi&oacute;n sobre los huesos y articulaciones causando rigidez y dolor articular</li>
                    </ul>
                    Para m&aacute;s informaci&oacute;n sobre c&oacute;mo combatir la obesidad leer el siguiente art&iacute;culo sobre el tema<br>
                    <a href="https://www.tuasaude.com/es/dieta-para-adelgazar/" target="_blank" rel="noopener noreferrer">https://www.tuasaude.com/es/dieta-para-adelgazar/</a> 
                </p>

            </cfif>
            <h1 id="regresar"><a href="#event.buildLink(to="health.index")#">Volver a calcular el IMC</a></h1>
        </section>

    </article>
</cfoutput>