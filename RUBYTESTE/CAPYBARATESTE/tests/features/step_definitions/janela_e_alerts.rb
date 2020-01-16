Quando("eu entro na janela e verifico a mensagem") do
    visit '/mudancadefoco/janela'
    #janela recebe uma janela que foi aberto pelo link
    janela = window_opened_by do
        click_link 'Clique aqui'
    end

    #muda de foco para a janela
    within_window janela do
        expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        
        janela.close
    end
    
    sleep(2)
    #segunda opcao

 
    click_link 'Clique aqui'

    #mudnado para a ultima aba
    switch_to_window windows.last

        expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

        windows.last.close
    end
  
  Quando("eu entro no alert e verifico faço a ação") do
    visit '/mudancadefoco/alert'
    #aceita a acao
    find('button[onclick="jsAlert()"]').click
    page.accept_alert
    
    #cancelar acao
    find('button[onclick="jsConfirm()"]').click
    page.dismiss_confirm

    find('button[onclick="jsPrompt()"]').click
    sleep(2)
    page.accept_prompt(with: 'junior monezi')
    page.dismiss_prompt
    sleep(2)
    
end