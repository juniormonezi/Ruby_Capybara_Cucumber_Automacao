#classe comeca com letra maiscula
#uma classe e composta por atributos e metodos e contrutores
class ClassName

    # e a mesma coisa que o get e seter do java
    attr_accessor :nome

    # #so permite ler
    # attr_reader :nomeone

    # #so permite escrever
    # attr_writer :nomedois

    #metodo
    #ome dele tem que ser tudo minusculo
    #e se for nome composto tem que ter o _ entre as palavras
    def metodo
        #corpo do metodo
        puts 'corpo do metodo'
    end

    def metodo_composto
        #corpo do metodo
        puts 'corpo do metodo composto'
    end
end


class Herenca < ClassName

end
        

objeto = ClassName.new
objeto.nome = "Junior"
puts objeto.nome
objeto.metodo
objeto.metodo_composto

objeto_herenca = Herenca.new

objeto_herenca.metodo_composto