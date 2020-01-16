Dado("que eu tenho {int} laranjas na bolsa.") do |valor|
    @laranjas = valor
end
  
  Quando("eu colocar {int} laranjas na bolsa") do |valor2|
    @colocar = valor2
    @resultado = @laranjas + @colocar
  end  
  
  Entao("eu verifico se o total de laranjas na bolsa e {int}") do |total|
    expect(@resultado).to eq total
  end
  
  Quando("eu tiro  {int} laranjas da bolsa") do |valor3|
    @retirar = valor3
    @resultado = @laranjas - @retirar
  end
  
  Entao("eu verifico com quantas laranjas eu fiquei  na bolsa") do
    expect(@resultado).to eq 8
    puts @resultado
  end