Quando("seleciono o mouse hover") do
    visit '/iteracoes/mousehover'
    find('.card').hover
    #find('.card').hover.click

    sleep(5)
  end