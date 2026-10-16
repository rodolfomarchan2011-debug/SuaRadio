@echo off
cd /d "%~dp0"
echo Iniciando SuaRadio em http://localhost:8080 ...
echo Nao feche esta janela enquanto usa.
start "" "http://localhost:8080/index.html"
python -m http.server 8080
pause
