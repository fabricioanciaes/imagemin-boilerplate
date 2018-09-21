@echo off
setlocal
SET AREYOUSURE=N
cls
echo [101;93m COMPRESSOR DE IMAGENS [0m
SET /P AREYOUSURE=Voce tem Node.js instalado (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "N" GOTO NPMI
cls
echo Primeiro instale o [92mNode.js[0m
echo tanto faz o current ou lts
echo quando terminar de instalar rode esse batch de novo.
echo Vou abrir o site pra voce:
echo ----------------------------------------
pause
cls
start "" https://nodejs.org/en/download/
exit
pause
:NPMI
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