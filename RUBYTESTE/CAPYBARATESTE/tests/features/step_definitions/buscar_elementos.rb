Quando("acesso a url de botoes") do
    visit '/buscaelementos/botoes'
  end
  
  Entao("verifico se encontrei o elementos") do
    #all busca todos os elementos que contenham o all
    page.all(:css, '.btn')
    #busca um elemento mapeado
    find('#teste')
    #busca por ID
    find_by_id('teste')
    #busca por botao
    find_button(class: "btn waves-light")
    #busca o primeiro elemento que contenha o elemento mapeado
    first('.btn')
    #busca por um link
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
  end