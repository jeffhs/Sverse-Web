<!doctype html>
<html lang="en" class="no-js">
<head style="z-index:1;">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Sverse Web"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="faviconSverse.ico" type="image/x-ico" />

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'theme.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'spectre.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'spectre-exp.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'spectre-icons.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}" type="text/css">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>

    <g:layoutHead/>
</head>
<body>

    <g:render template="templates/header" style="z-index:2;"/>

    <g:layoutBody/>

    <g:render template="templates/rodape"/>

    <asset:javascript src="application.js"/>
    <asset:javascript src="jquery-1.9.1.min.js"/>
    <asset:javascript src="jquery-ui-1.10.1.custom.min.js"/>
    <asset:javascript src="jquery.dataTables.js"/>

</body>
</html>
