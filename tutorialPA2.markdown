# Documentação do PA2

Lista das atividades desenvolvidas no ProgrammAssignment2 do Curso de Programação em R:

* Comandos para a [geração das chaves SSH](https://help.github.com/articles/generating-ssh-keys/) 

```javascript
$ ls -al ~/.ssh
$ ssh-keygen -t rsa -C "andrevalentebr@gmail.com"
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/id_rsa 
```
```javascript
$ sudo apt-get install xclip 
$ xclip -sel clip < ~/.ssh/id_rsa.pub
* Adicionar a chave gerada no repositório Github
$ ssh -T git@github.com
```
* Passo a passo dos comandos no Git/GitHub
 
 Após realizado o FORK do [repositório de exemplo](https://github.com/rdpeng/ProgrammingAssignment2) no [meu repositório](https://github.com/andrevalentebr/ProgrammingAssignment2)
 
```javascript
$ git clone git@github.com:andrevalentebr/ProgrammingAssignment2.git PA2
$ git status
$ git config --global user.email "andrevalente@gmail.com"
$ git config --global user.name "André Valente"
$ git add .   -> (esse comando dentro da pasta PA2)
$ git commit -m "atualização do cachematrix.R"
$ git log
$ git push origin master
```

* Livro digital [PRO GIT](http://git-scm.com/book/pt-br/v1/) -> muito bom!!!
* Ajuda do [git/github](https://help.github.com/) -> aqui que eu resolvi o problema de identificação do usuário e nome.


