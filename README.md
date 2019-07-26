# README
####O aplicativo pode ser acessado em:
https://powerful-everglades-24505.herokuapp.com/

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
