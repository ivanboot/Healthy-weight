/**
 * Manage health
 * It will be your responsibility to fine tune this template, add validations, try/catch blocks, logging, etc.
 */
component extends="coldbox.system.EventHandler"{

	// DI

	// HTTP Method Security
	this.allowedMethods = {
		index  		= "GET",
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
