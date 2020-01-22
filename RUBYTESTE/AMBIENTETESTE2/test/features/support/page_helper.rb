#pegando todos os arquivos neste caminho que termine com .rb
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file}

module PageObjects

    def home
        # ||= quando chamar esta variavel home ele instancia caso ja esteja instanciado não instancia
        @home ||= MapeandoElementoPage.new 
        @home ||= CadastrarUsuario.new
    end
end