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

 cd [..........................]/Tensorflow App/Download Packages/models-master/research

 python setup.py build
 pause
 python setup.py install
 pause 

ECHO ==================================================
ECHO Testing Installation 
ECHO ==================================================
 
cd [..........................]/Tensorflow App/Download Packages/models-master/research/object_detection

pause 

jupyter notebook 

pause



