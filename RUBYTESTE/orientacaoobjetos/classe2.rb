#OVERRINDING
# O OVERRINDING , NA PROGRAMAÇÃO ORIENTADA A
# OBJETOS, É UM RECURSO DE LINGUAGEM QUE PERMITE QUE
# UMA SUBCLASSE FORNEÇA UMA IMPLEMENTAÇÃO ESPECÍFICA
# DE UM MÉTODO QUE JÁ É FORNECIDO POR UMA DE SUAS
# SUPERCLASSES.A IMPLEMENTAÇÃO NA SUBCLASSE SUBSTITUI A
# IMPLEMENTAÇÃO NA SUPERCLASSE.
class ClassMae

    def correr
        puts 'a mae corre'
        
    end
    
end

class ClassFilha < ClassMae
    def correr
        #super invoca o metodo da classe pai
        puts super
        puts "cansei"
        
    end
end

objeto = ClassFilha.new

objeto.correr