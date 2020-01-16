Quando("eu cadastro um usuario") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'junior')
    find('#user_lastname').set('monezi')
    fill_in(id: 'user_email', with: 'teste@teste.com')
    find('input[value="Criar"]').click
  end
  
  Entao("verifico se o usuário foi cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
    
  end
  
  Quando("eu edito um usuario") do
    sleep(5)
    find('.btn.waves-light.blue').click
  end
  
  Entao("verifico se o usuario foi editado") do
    
  end