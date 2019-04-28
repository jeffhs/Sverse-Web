<link rel="stylesheet" href="${resource(dir: 'css', file: 'css_login.css')}" type="text/css">

<div class="container" style="display: none;">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Cadastrar</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div id="card-cadastro" class="card-body">
				<g:form name="FormCadastro" url="[controller:'isolamento', action:'save']">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" name="nome" id="Nome" class="form-control" placeholder="Digite seu nome">
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" name="username" id="userNameCadastro" class="form-control" placeholder="Digite o seu nome de usuário">
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="password" id="passwordCadastro" class="form-control" placeholder="Senha">
					</div>
					<div class="radiobuttons-container">
						<label class="mcontainer">Masculino
							<input type="radio" checked="checked" value="Masculino" name="sexo">
							<span class="checkmark"></span>
						</label>
						<label class="mcontainer">Feminino
							<input type="radio" value="Feminino" name="sexo">
							<span class="checkmark"></span>
						</label>
					</div>
					<div class="form-group">
						<input type="submit" style="padding-left: 0; padding-right: 0; text-align: center; color: dimgray;" value="Cadastrar" class="btn float-right login_btn"/>
					</div>
				</g:form>
			</div>
		</div>
	</div>
</div>