Quando("eu multiploco minhas {int} pelo {int}") do |laranja, valor|
    @multiplicacao = laranja * valor
  end
  
  Entao("eu vejo qual o {int} da multiplicação") do |resultado|
   expect(@multiplicacao).to eq resultado
  end