Quando("eu cadastro um usuário") do
    @cadastrar_usuario = CadastrarUsuario.new
    @cadastrar_usuario.load
    
    @cadastrar_usuario.nome.set 'junior'
    @cadastrar_usuario.lastName.set 'monezi'
    @cadastrar_usuario.email.set 'teste@teste.com'
    @cadastrar_usuario.endereco.set 'rua teste'
    @cadastrar_usuario.btnCriar.click


  end
  
  Entao("eu verifico se o usuário foi cadastrado.") do
    
  end


