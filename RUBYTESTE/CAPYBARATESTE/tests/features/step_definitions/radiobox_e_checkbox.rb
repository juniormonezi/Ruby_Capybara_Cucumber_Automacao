Quando("marco um radiobox e um checkbox") do
    visit '/buscaelementos/radioecheckbox'
    find('label[for="white"]').click
    check('purple', allow_label_click: true)
    sleep(2)
    uncheck('purple', allow_label_click: true)
    sleep(4)
    choose('red', allow_label_click: true )
    sleep(2)
  end