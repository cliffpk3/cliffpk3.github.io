@echo off
:: Define o caminho da pasta e nome do script
set REPO_PATH=D:\Documents\Projetos\Pessoal\cliffpk3.github.io-main
set SCRIPT_NAME=push.bat

:: Vai até o diretório do repositório
cd /d %REPO_PATH%

:: Remove o script .bat dos arquivos a serem adicionados
echo %SCRIPT_NAME%> .gitignore

:: Adiciona os arquivos (exceto o .bat) ao commit
git add .

:: Comita as alterações
git commit -m "Atualizacao automatica via script"

:: Faz o push para o repositório remoto usando um token de autenticação
git push --force main main

pause