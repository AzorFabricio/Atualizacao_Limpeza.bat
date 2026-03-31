@echo off
echo Iniciando verificacao de atualizacoes do Windows...
wuauclt /detectnow
timeout /t 30
echo Iniciando instalacao de atualizacoes...
wuauclt /updatenow
echo.
echo Comando enviado. Verifique o Windows Update.

echo Limpando arquivos temporarios do usuario...
del /q /s /f "%temp%\*.*"
rd /s /q "%temp%"
md "%temp%"

echo.
echo Limpando arquivos temporarios do Windows...
del /q /s /f "C:\Windows\Temp\*.*"
rd /s /q "C:\Windows\Temp"
md "C:\Windows\Temp"

echo.
echo Limpando arquivos Prefetch...
del /q /s /f "C:\Windows\Prefetch\*.*"
rd /s /q "C:\Windows\Prefetch"
md "C:\Windows\Prefetch"

echo.
echo Limpeza concluida!
pause

