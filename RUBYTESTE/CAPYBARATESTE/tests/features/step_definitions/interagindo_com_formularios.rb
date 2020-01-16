Quando("eu faco cadastro") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'junior')
    find('#user_lastname').set('monezi')
    find('#user_email').send_keys('junior@teste.com')

    fill_in(id: 'user_address', with: 'Rua 12')
    find('#user_university').set('fatec')
    find('#user_profile').send_keys('QA')

    fill_in(id: 'user_gender', with: 'masculino')
    find('#user_age').set('27')
    click_button(name: 'commit')
    sleep(5)
  end
  
  Entao("verifico se fui cadastrado") do
    texto = find('#notice')

    expect(texto.text).to eql 'Usuário Criado com sucesso'
    

  end
  