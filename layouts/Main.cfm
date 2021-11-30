<cfoutput>
<!doctype html>
<html lang="es">
<head>
	<!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>Healthy-Weight</title>

	<!---Base URL --->
	<base href="#event.getHTMLBaseURL()#" />

	<!---css --->
	
	<link rel="stylesheet" href="includes/css/style.css">
</head>
<body>
	
	<header id="header">
		<section id="logo">
			<a href="#event.buildLink(to="health.index")#">
				<h1>Healthy<span>Weight</span></h1>
			</a>
		  </section>
	  </header>
	<!---Container And Views --->
	<div class="contenido">#renderView()#</div>

	<footer id="footer">Mega challenge Ortus Solution 2021 &copy;<br>
		 Iv&aacute;n Alexander Mart&iacute;nez Garc&iacute;a
</body>
</html>
</cfoutput>
