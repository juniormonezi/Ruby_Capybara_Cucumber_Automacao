After do |screnario|
    #gsub retira os espacos e colcoar _
    screnario_name = screnario.name.gsub(/\s+/,'_').tr('/','_')

    if screnario.failed?
        tirar_foto(screnario_name.downcase!, 'falhou')
    else
        tirar_foto(screnario_name.downcase!, 'passou')
    end

end