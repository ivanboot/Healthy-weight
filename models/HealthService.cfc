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

	function calcularimc(altura,peso,genero){
		return decimalFormat((peso/(altura*altura)));
	}

	function pesoideal(altura,genero,edad){
		if(genero="H"){
			return decimalFormat(50+((altura-150)/4)*3+(edad-20)/4);
		}else{
			return decimalFormat((50+((altura-150)/4)*3+(edad-20)/4)*0.9);
		}
	}
	/**
	 * save
	 */
	function save(){

	}

	/**
	 * delete
	 */
	function delete(){

	}

	/**
	 * list
	 */
	function list(){

	}

	/**
	 * get
	 */
	function get(){

	}


}