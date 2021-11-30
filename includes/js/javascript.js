function calculoIMC()
    {
      var peso, altura;
      var bandera = true;

      peso=document.getElementById("peso").value;
      altura=document.getElementById("altura").value;
      edad=document.getElementById("edad").value;
      alertas = document.getElementById("alertas").style;

      alert("Saludos");

      alertas.visibility ='hidden';
      alertas.position= 'absolute';
      
      //Validacion de datos
      if(isNaN(altura) || (altura.length==0) || ( altura < 0)){
        bandera = false
        alertas.visibility='visible';
        alertas.position= 'relative';
        document.getElementById("error altura").style.visibility='visible';
        document.getElementById("error altura").style.position='relative';
      }else{
        document.getElementById("error altura").style.visibility='hidden';
        document.getElementById("error altura").style.position='absolute';
      }
      if(isNaN(peso) || (peso.length==0) || (peso<0)){
        bandera = false
        alertas.visibility='visible';
        alertas.position= 'relative';
        document.getElementById("error peso").style.visibility='visible';
        document.getElementById("error peso").style.position='relative';
      }else{
        document.getElementById("error peso").style.visibility='hidden';
        document.getElementById("error peso").style.position='absolute';
      }

      if(isNaN(edad) || (edad.length==0) || (edad % 1 != 0) || (edad<0)){
        bandera = false
        alertas.visibility='visible';
        alertas.position= 'relative';
        document.getElementById("error edad").style.visibility='visible';
        document.getElementById("error edad").style.position='relative';
      }else{
        document.getElementById("error edad").style.visibility='hidden';
        document.getElementById("error edad").style.position='absolute';
      }
      
      //Envio de formulario
      if(bandera){
        document.imc.submit();
      }
      
}