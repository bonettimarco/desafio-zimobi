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
