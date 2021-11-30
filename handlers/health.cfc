/**
 * Manage health
 * It will be your responsibility to fine tune this template, add validations, try/catch blocks, logging, etc.
 */
component extends="coldbox.system.EventHandler"{

	// DI
	property name="healthService" inject="HealthService";
	
	// HTTP Method Security
	this.allowedMethods = {
		index  		= "GET",
		IMC 		= "POST",
		new    		= "GET",
		create   	= "POST,PUT",
		show 		= "GET",
		edit		= "GET",
		update 		= "POST,PUT,PATCH",
		delete 		= "DELETE"
	};

	/**
	 * Param incoming format, defaults to `html`
	 */
	function preHandler( event, rc, prc ){
		event.paramValue( "format", "html" );
	}

	/**
	 * Display a list of health
	 */
	function index( event, rc, prc ){
		// Get resources here

		event.setView( "health/index" );
	}

	function IMC( event, rc, prc ){
		// Get resources here
		prc.imc = healthService.calcularimc(rc.altura,rc.peso,rc.genero,rc.unidades);
		prc.pesoideal = healthService.pesoideal(rc.altura,rc.genero,rc.edad,rc.unidades);
		prc.unidades = rc.unidades;
		event.setView( "health/result" );
	}

	/**
	 * Return an HTML form for creating one health
	 */
	function new( event, rc, prc ){
		event.setView( "health/new" );
	}

	/**
	 * Create a health
	 */
	function create( event, rc, prc ){

	}

	/**
	 * Show a health
	 */
	function show( event, rc, prc ){
		event.paramValue( "id", 0 );

		event.setView( "health/show" );
	}

	/**
	 * Edit a health
	 */
	function edit( event, rc, prc ){
		event.paramValue( "id", 0 );

		event.setView( "health/edit" );
	}

	/**
	 * Update a health
	 */
	function update( event, rc, prc ){
		event.paramValue( "id", 0 );

	}

	/**
	 * Delete a health
	 */
	function delete( event, rc, prc ){
		event.paramValue( "id", 0 );

	}

}
