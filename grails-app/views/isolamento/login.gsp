<!DOCTYPE html>
<html>
<head>
	<title>Sverse Login</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/desktop-style.css?v=266bb8a6f649">
	<link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/misc-desktop-style.css?v=84527a92ab6d">
	<asset:link rel="icon" href="faviconSverse.ico" type="image/x-ico"/>

	<style>
	/* Customize the label (the container) */
	.mcontainer {
		display: block;
		position: relative;
		padding-left: 22px;
		margin-bottom: 12px;
		cursor: pointer;
		font-size: 14px;
		color: whitesmoke;
		-webkit-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}

	/* Hide the browser's default radio button */
	.mcontainer input {
		position: absolute;
		opacity: 0;
		cursor: pointer;
		height: 0;
		width: 0;
	}

	/* Create a custom radio button */
	.checkmark {
		position: absolute;
		top: 0;
		left: 0;
		height: 16px;
		width: 16px;
		background-color: #eee;
		border-radius: 50%;
	}

	/* On mouse-over, add a grey background color */
	.mcontainer:hover input ~ .checkmark {
		background-color: #ccc;
	}

	/* When the radio button is checked, add a blue background */
	.mcontainer input:checked ~ .checkmark {
		background-color: #2196F3;
	}

	/* Create the indicator (the dot/circle - hidden when not checked) */
	.checkmark:after {
		content: "";
		position: absolute;
		display: none;
	}

	/* Show the indicator (dot/circle) when checked */
	.mcontainer input:checked ~ .checkmark:after {
		display: block;
	}

	/* Style the indicator (dot/circle) */
	.mcontainer .checkmark:after {
		top: 6px;
		left: 6px;
		width: 5px;
		height: 5px;
		border-radius: 50%;
		background: white;
	}
	.radiobuttons-container {
		height:auto;
		-webkit-column-count: 3;
		-moz-column-count:3;
		column-count: 3;
	}
	</style>

</head>
<body>

<div class="contenedor" style="position: relative; width: 100vw;">
	<div class="columns">
		<div class="column col-12">
			<header class="global-header contentNavGlobal">
				<div class="content community-bg">
					<div class="container">
						<g:render template="../templates/_navGlobalPublic"/>
					</div>
				</div>
			</header>
		</div>
	</div>
	<div class="" style="position: absolute; width: 100vw; top: 44px; background-image: url('/assets/introsverse.jpg'); background-size: cover; background-position: center;">
		<div class="" style="position: relative; width: 100vw; height: 440px; background-image: url('/assets/introsverse.jpg'); background-size: cover; background-position: center;">
		</div>
		<div class="" style="position: relative; width: 100vw; height: 540px; background-image: url('/assets/introBG1.jpg'); background-size: cover; background-position: center;">
		</div>
		<div class="" style="position: relative; width: 100vw; height: 440px; background-image: url('/assets/introBG2.jpg'); background-size: cover; background-position: center;">
		</div>
		<div class="" style="position: relative; width: 100vw; height: 540px; background-image: url('/assets/introBG3.jpg'); background-size: cover; background-position: center;">
		</div>
		<div class="" style="position: relative; width: 100vw; height: 340px; background-image: url('/assets/introBG4.jpg'); background-size: cover; background-position: center;">
		</div>
		<div class="" style="position: relative; width: 100vw; height: 440px; background-image: url('/assets/introBG5.jpg'); background-size: cover; background-position: center;">
		</div>
	</div>
</div>


<g:render template="login"/>
<g:render template="cadastro"/>

<script>
	function exibirTelaDeLogin(){
		var tela = document.getElementById("telaDeLogin");
		if(tela.style.display == "none"){
			tela.style.display = "block";
		} else {
			tela.style.display = "none";
		}
	}
	function exibirTelaDeCadastro(){
		var cardLogin = document.getElementById("card-login");
		var form = document.getElementById("frmLogar");
		form.style.display = "none";
		cardLogin.innerHTML = document.getElementById("card-cadastro").innerHTML;
		document.getElementById("footer").innerHTML = "<div style='position: absolute; bottom: 0; left: 8px;'><a class='btn' style='color: whitesmoke; font-size: 11pt;  background-color: rgba(0,0,0,0);'>Duvidas sobre os termos de uso?</a></div>"
	}
</script>
</body>
</html>