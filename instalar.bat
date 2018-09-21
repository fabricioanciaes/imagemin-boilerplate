@echo off
cls
echo [101;93m COMPRESSOR DE IMAGENS [0m
echo Primeiro instale o [92mNode.js[0m
echo tanto faz o current ou lts
echo Vou abrir a pagina pra voce, quando terminar volte pra essa tela
echo ----------------------------------------
pause
cls
start "" https://nodejs.org/en/download/
echo Terminou de instalar o node.js? aperte qualquer coisa para continuar
echo ----------------------------------------
pause
cls
echo [101;93m INSTALANDO PACOTES DO NPM [0m
call npm install
call npm i -g gulp
echo ----------------------------------------
echo ----------------------------------------
echo [101;93m Deve estar funcionando agora [0m
echo Para comprimir as imagens, coloque as na pasta [92moriginais[0m e rode o bat [92mcomprimir.bat[0m
echo As imagens vao sair na pasta [92mcomprimidas[0m
echo ----------------------------------------
echo ----------------------------------------
pause