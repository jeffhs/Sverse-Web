<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
    <title>Tela de Confirmação</title>
    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'css_login.css')}" type="text/css">

</head>

<body>
<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h6 style="color: whitesmoke; margin-top: 20px;">Seu Cadastro <g:if
                        test="${user == null}">não</g:if> foi bem sucedido</h6>

                <div class="d-flex justify-content-end social_icon">
                    <span><i class="fab fa-facebook-square"></i></span>
                    <span><i class="fab fa-google-plus-square"></i></span>
                    <span><i class="fab fa-twitter-square"></i></span>
                </div>
            </div>

            <div id="card-login" class="card-body">
                <g:if test="${user != null}">
                    <h4 style="color: whitesmoke">Comece sua experiência Sverse</h4>
                    <br/>
                    <a class="login_btn btn" href="${createLink(uri: '/')}">Logar</a>
                </g:if>
                <g:else>
                    <g:each in="${mErrors}" var="erro">
                        <p style="color: #e6a500; font-size: 11pt;">
                            <g:if test="${erro.field.toString() == 'nome'}">Seu nome não pode ter menos de 6 digitos.</g:if>
                            <g:elseif test="${erro.field.toString() == 'username'}">Seu login não pode ter menos de 6 digitos nem ser igual a um já existente.</g:elseif>
                            <g:elseif
                                    test="${erro.field.toString() == 'password'}">Sua senha não pode ter menos de 6 digitos.</g:elseif>
                        </p>
                    </g:each>
                    <h6 style="color: whitesmoke; font-size: 10pt;">Atente-se para as restrinções de cadastro e confirme o cadastro novamente.</h6>
                    <a class="login_btn btn" style="float: right; margin-top: 14px; margin-right: 20px;"
                       href="${createLink(uri: '/isolamento/autenticarUsuario/${user.username}')}">Tentar</a>
                </g:else>
            </div>

            <div class="card-footer">

            </div>
        </div>
    </div>
</div>
</body>
</html>