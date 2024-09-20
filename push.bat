@echo off
:: Define o caminho da pasta e nome do script
set REPO_PATH=D:\Documents\Projetos\Pessoal\cliffpk3.github.io-main
set SCRIPT_NAME=push.bat

:: Vai at� o diret�rio do reposit�rio
cd /d %REPO_PATH%

:: Remove o script .bat dos arquivos a serem adicionados
echo %SCRIPT_NAME%> .gitignore

:: Adiciona os arquivos (exceto o .bat) ao commit
git add .

:: Comita as altera��es
git commit -m "Atualizacao automatica via script"

:: Faz o push para o reposit�rio remoto usando um token de autentica��o
git push --force main main

pause