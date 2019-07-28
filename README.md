# README
####O aplicativo pode ser acessado em:
https://powerful-everglades-24505.herokuapp.com/
####modelagem
rails g scaffold User name:string email:string reset_digest:string reset_sent_at:datetime activation_digest:string activated:boolean activated_at:datetime admin:boolean remember_digest:string password_digest:string


Este README documenta os passos necessários para configurar a aplicação e rodar num browser.

* Ruby version -  2.6.1p33

* System dependencies - mysql-server

* Configuration
#### No diretório raiz:
gem install bundler -v 1.17.3
bundle install
rails s

* Criação do banco de dados
rake db:create:all
rake db:migrate

* Inicializar banco de dados
#### Setar no database.yml seu usuário e senha do mysql
  username: root
  password: tttzzz

* Rodar suíte de testes
rspec

* Cobertura de testes:
####Sales
  criar anúncios
    cria um anúncio
  editar anúncio
    editaum anúncio

####Sale
####  associations
    should belong to user required: true
  testa factory
    cria anúncio
    cria usuario com anúncio

####User
  testa factories
    cria usuario

####Finished in 2.75 seconds (files took 1.7 seconds to load)
6 examples, 0 failures

