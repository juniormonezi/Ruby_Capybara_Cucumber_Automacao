=begin
 module ModuleNome
    #serve para agrupar classes
    #serve para agrupar contantes
    #serve para agrupar metodos
    #não pode ser instanciado
    #nao pode ser herdado
    def method_padrao
        puts 'eu sou um modulo'
        
    end
end

class ClassName
    include ModuleNome
    
    
end

objeto = ClassName.new
objeto.method_padrao
=end

class Cachorro

    def latir
        puts 'au au au'
    end
    
end

class CachorroGrande
    def latir
        puts 'au au'
        
    end
    
end

class Pessoa
    
    def agarra_Cachorro(cachorro)
        cachorro.latir
    end
end
    

c1 = Cachorro.new
c2 = CachorroGrande.new


p = Pessoa.new
p.agarra_Cachorro(c1)
p.agarra_Cachorro(c2)
