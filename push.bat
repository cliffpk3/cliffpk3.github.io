@echo off
:: Define o caminho da pasta e nome do script
set REPO_PATH=D:\Documents\Projetos\Pessoal\cliffpk3.github.io-main
set SCRIPT_NAME=push.bat

:: Vai até o diretório do repositório
cd /d %REPO_PATH%

:: Inicializa o repositório local (caso não esteja inicializado)
git init

:: Adiciona o repositório remoto (faça isso apenas uma vez)
git remote add origin https://github.com/cliffpk3/cliffpk3.github.io

:: Configura seu usuário e e-mail do Git (faça isso uma vez)
git config user.name "SeuNome"
git config user.email "SeuEmail@example.com"

:: Remove o script .bat dos arquivos a serem adicionados
echo %SCRIPT_NAME%> .gitignore

:: Adiciona os arquivos (exceto o .bat) ao commit
git add .

:: Comita as alterações
git commit -m "Atualização automática via script"

:: Faz o push para o repositório remoto usando um token de autenticação
git push https://<seu_token>@github.com/cliffpk3/cliffpk3.github.io.git master

pause