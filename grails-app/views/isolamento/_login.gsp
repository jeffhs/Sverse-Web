<link rel="stylesheet" href="${resource(dir: 'css', file: 'css_login.css')}" type="text/css">

<div class="container" id="telaDeLogin" style="display:none; position: fixed; justify-content: center; align-items: center;">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3 style="margin-top: 10px;">Sverse Web</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div id="card-login" class="card-body">
				<form action='${request.contextPath}/login/authenticate' method='POST' id='frmLogar' name='frmLogar'>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" id="username" name="username" class="form-control" placeholder="Nome de Usuario">

					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="password" id="password" class="form-control" placeholder="Senha">
					</div>
					<div class="row align-items-center remember">
						<input id="lembrarChecked" name="remember-me" type="checkbox">Lembrar
					</div>
					<div class="form-group">
						<input type="submit" value="Logar" style="color: dimgray; " class="btn float-right login_btn">
					</div>
				</form>
			</div>
			<div id="footer" class="card-footer">
				<div class="d-flex justify-content-center links">
					Ainda não tem uma conta?<a href="#" onclick="exibirTelaDeCadastro()">Cadastre-se</a>
				</div>
				<div class="d-flex justify-content-center" style="color:white;">
					<a href="#">Esqueceu sua senha?</a>
				</div>
			</div>
		</div>
	</div>
</div>
