@echo off
TITLE PYTHONPATH Editter

ECHO ==================================================
ECHO PYTHONPATH Editer
ECHO ==================================================

:: This setion adds some file paths to the PYTHONPATH in Environment Settings.
set x= C:/Users/anith/Desktop

setx PYTHONPATH "%PYTHONPATH%;%x%/Tensorflow App/Download Packages/models-master/research;%x%/Tensorflow App/Download Packages/models-master/research/slim"

pause

echo %PYTHONPATH%

pause