/**
 * I manage health
 */
component singleton accessors="true"{

	// Properties
	

	/**
	 * Constructor
	 */
	HealthService function init(){

		return this;
	}

	function calcularimc(altura,peso,genero,unidades){
		
		if(unidades=="SM"){
			//Formula IMC para Kg/m^2
			return decimalFormat((peso/(altura*altura)));
		}else{
			//Formula IMC para Lb/in^2 
			return decimalFormat((peso/(altura*altura))*703);
		}

	}

	function pesoideal(altura,genero,edad,unidades){
		if(unidades=="SI"){
			altura = (altura/39.37);
			peso = (peso/2.205);
		}

		if(genero=="H"){
			return decimalFormat(50+(((altura*100)-150)/4)*3+(edad-20)/4);
		}else{
			return decimalFormat((50+(((altura*100)-150)/4)*3+(edad-20)/4)*0.9);
		}
	}


}