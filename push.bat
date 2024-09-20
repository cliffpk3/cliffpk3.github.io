@echo off
:: Define o caminho da pasta e nome do script
set REPO_PATH=D:\Documents\Projetos\Pessoal\cliffpk3.github.io-main
set SCRIPT_NAME=push.bat

:: Vai at� o diret�rio do reposit�rio
cd /d %REPO_PATH%

:: Inicializa o reposit�rio local (caso n�o esteja inicializado)
git init

:: Adiciona o reposit�rio remoto (fa�a isso apenas uma vez)
git remote add origin https://github.com/cliffpk3/cliffpk3.github.io

:: Configura seu usu�rio e e-mail do Git (fa�a isso uma vez)
git config user.name "SeuNome"
git config user.email "SeuEmail@example.com"

:: Remove o script .bat dos arquivos a serem adicionados
echo %SCRIPT_NAME%> .gitignore

:: Adiciona os arquivos (exceto o .bat) ao commit
git add .

:: Comita as altera��es
git commit -m "Atualiza��o autom�tica via script"

:: Faz o push para o reposit�rio remoto usando um token de autentica��o
git push https://<seu_token>@github.com/cliffpk3/cliffpk3.github.io.git master

pause