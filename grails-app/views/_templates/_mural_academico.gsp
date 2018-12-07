<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sverse Web</title>

    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>

    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css'>
    <link rel="stylesheet" href="css/style-profile-model.css">

    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Slabo+27px|Yesteryear'>
	<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css'>
	<link rel="stylesheet" href="css/grid-style.css">

    <link href=${resource(dir: 'css', file: 'cycle-cronometer.css')} rel="stylesheet">
    <asset:javascript src="script-cycle-cronometer.js"/>


</head>
<body>
<div class="wrapper">
        <div class="container">
            <div class="row">
                <g:render template="templates/sidebar"/>
                <div class="span9">

                    <div class="wrapper">
                        <div class="container">
                            <div class="row">
                                <div class="span9">
                                    <div class="content">
                                        <div class="module">
                                            <div class="module-head">
                                                <h3 class="h3-module-head">Bloco de Notas</h3>
                                            </div>


                                            <div class="col-md-12 text-center">
                                                <h1>Cronômetro com Javascript</h1>
                                            </div>
                                            <div class="col-md-12 text-center center-block">
                                                <div id="tempo" type="button" class="btn btn-warning tamanho text">00:00!</div>

                                            </div>
                                            <div class="marginTop col-md-12 text-center center-block">
                                                <button id="btn" onclick="cronometro(1)" type="button" class="col-md-2 col-md-offset-5 btn btn-success">Iniciar</button>
                                            </div>
                                            <div class="marginTop col-md-12 text-center center-block">
                                                <button id="btnPause" onclick="parar()" type="button" class="hide col-md-2 col-md-offset-5 btn btn-danger">Pause</button>
                                            </div>
                                            <div class="marginTop col-md-12 text-center center-block">
                                                <button id="btnStop" onclick="stop()" type="button" class="hide col-md-2 col-md-offset-5 btn btn-primary">Stop</button>
                                            </div>
                                            <div class="marginTop col-md-12 text-center center-block">
                                                <div class="col-md-4 col-md-offset-4">
                                                    <div class="input-group">
                                                        <span class="input-group-addon">Min</span>
                                                        <input id="minutos" type="number" min="0" max="59" class="form-control" placeholder="Minutos">
                                                    </div>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">Seg</span>
                                                        <input id="segundos" type="number"  min="0" max="59" class="form-control" placeholder="Segundos">
                                                        <input id="pause" type="hidden" value="0"  class="form-control">
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <!--/.content-->
                                </div>
                                <!--/.span9-->
                            </div>
                        </div>
                        <!--/.container-->
                    </div>
                    <!--/.wrapper-->



                </div>
             </div>
        </div>
    </div>


    <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
    <script src="scripts/profile-model.js"></script>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="scripts/grid-profile.js"></script>
</body>