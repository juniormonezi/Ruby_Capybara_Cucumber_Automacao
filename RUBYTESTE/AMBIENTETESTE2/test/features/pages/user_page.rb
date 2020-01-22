class CadastrarUsuario < SitePrism::Page
    set_url '/users/new'

    element :nome, '#user_name'
    element :lastName, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_iniversity'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'
    element :btnCriar, '.actions.btn.waves-effect.green'
    element :mensagem, '#notice'


    def criar_usuario(user)
    nome.set user.name
    lastName.set user.lastname
    email.set user.email
    endereco.set user.endereco
    universidade.set user.universidade
    profissao.set 'analista de qualidade'
    genero.set 'Masculino'
    idade.set '28'
    btnCriar.click   
         
    end
end