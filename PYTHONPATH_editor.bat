@echo off
TITLE PYTHONPATH Editor

ECHO ==================================================
ECHO PYTHONPATH Editor
ECHO ==================================================

:: This setion adds some file paths to the PYTHONPATH in Environment Settings.
:: The variable below must be filled in with where the Tensorflow app is downloaded. 
:: An example of what the [...] could be is -->> C:/Users/anith/Desktop .
:: Remember the back and forward slashes

set x = [.............] 

setx PYTHONPATH "%PYTHONPATH%;%x%/Tensorflow App/models/research;%x%/Tensorflow App/models/research/slim"

pause

echo %PYTHONPATH%

pause
