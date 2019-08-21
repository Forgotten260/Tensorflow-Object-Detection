@ECHO OFF
TITlE Tensorflow_Installer
echo This Installer configures and install the Tensorflow on a Windows 10 PC.
echo Some edits are required to specify locations of files.
echo This installer MAY REQUIRE Administrator Privileges 

pause

ECHO ==================================================
ECHO Package Installer
ECHO ==================================================

::This section install the required packages for the App.

pip install --user Cython                    
pip install --user contextlib2                
pip install --user pillow                     
pip install --user lxml                       
pip install --user jupyter                    
pip install --user matplotlib                
pip install --user tensorflow                 
pip install --user opencv-python==3.4.4.19    

pause

ECHO ==================================================
ECHO Setup.py
ECHO ==================================================
 
 :: Before doing anythng else a specific python file must be run (Setup.py).
 ::That is what this section does

 ECHO Building and Installing Setup.py
 
:: Replace with the [....] with the loation of where the Tensorflow App is downloaded.
:: E.G. ---->> C:/Users/anith/Desktop/Tensorflow App/models/research
:: Remember to to replace the backslashed with forward slashes.

 cd [..........................]/Tensorflow App/models/research  

 python setup.py build      ::[]
 pause
 python setup.py install    ::[]
 pause 

ECHO ==================================================
ECHO Testing Installation 
ECHO ==================================================
 
cd [..........................]/Tensorflow App/models/research/object_detection

pause 

jupyter notebook     ::[]

pause



