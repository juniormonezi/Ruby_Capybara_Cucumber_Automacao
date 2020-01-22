Quando("mapeio uma tabela") do
    @lista_de_elementos = MapeandoListas.new
    
    @lista_de_elementos.load
    sleep(2)

    puts @lista_de_elementos.lista.size

    puts @lista_de_elementos.lista[0].text

    expect(@lista_de_elementos.lista.size).to eql 24
    
    #vai pasar por cada elemento e imprimir
    @lista_de_elementos.lista.each do |listas|
        puts listas.text
    end
end


    