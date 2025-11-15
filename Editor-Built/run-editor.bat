@echo off
setlocal

set JAVA_EXE="C:\Program Files\Java\jdk-21\bin\java.exe"
set JFX_HOME=%~dp0jfx
set PATH=%JFX_HOME%\bin;%PATH%
set JFX_MODULES=javafx.base,javafx.graphics,javafx.controls,javafx.fxml,javafx.swing,javafx.media

%JAVA_EXE% ^
  --module-path "%JFX_HOME%\lib" ^
  --add-modules %JFX_MODULES% ^
  -jar "%~dp0RSPSi-Editor.jar"

endlocal
pause
