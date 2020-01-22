module Helper
    #passar nome arquivo e resultado
    def tirar_foto(nome_arquivo, resultado)
        #criei caminho do arquivo que contem pastas que vai gerar uma pasta de testeFalhou e testPassou
        caminho_arquivo = "results/screenshots/test_#{resultado}"
        #recebe o caminho e nome foto
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        #tira a foto da tela
        page.save_screenshot(foto)
        #add a foto no arquivo html
        embed(foto, 'image/png', 'Clique aqui')
        
    end

end