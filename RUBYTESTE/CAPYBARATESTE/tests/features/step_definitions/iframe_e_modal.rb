Quando("entro no iframe e preencho os campos") do
    visit '/mudancadefoco/iframe'
    
    #mudando foco para o iframe
    within_frame('id_do_iframe') do 
        #iremos fazer as acoes dentro do iframe
       fill_in(id: 'first_name', with: 'junior')
       fill_in(id: 'last_name', with: 'monezi')
        #sleep(4)
    end
  end
  
  Quando("entro no modal e verifico o texto") do
    visit '/mudancadefoco/modal'
    find('a[href="#modal1"]').click
    
    within('#modal1') do
        texto = find('h4')
        expect(texto.text).to eql 'Modal Teste'
        find('a[class="modal-close waves-green btn-flat"]').click
    
    end
    sleep(3)
  end
   