cd c:\temp
pip install virtualenv
virtualenv venv
venv\Scripts\activate
python -m pip install --upgrade "pip==18.1"
python -m pip install --upgrade "setuptools==40.6.3"
git clone --branch develop https://github.com/pyinstaller/pyinstaller.git
git clone https://github.com/plus3it/watchmaker.git --recursive
git clone https://github.com/plus3it/pyppyn.git
git clone https://github.com/plus3it/gravitybee.git
cd watchmaker
git checkout c55a519
cd ..\pyppyn
git checkout 9b47885
cd ..\gravitybee
git checkout e9c08ec
cd ..\pyinstaller
python -m pip install --upgrade "setuptools==40.6.3"
pip install --editable .
cd ..\pyppyn
python -m pip install --upgrade "setuptools==40.6.3"
pip install --editable .
cd ..\gravitybee
python -m pip install --upgrade "setuptools==40.6.3"
pip install --editable .
cd ..\watchmaker
python -m pip install --upgrade "setuptools==40.6.3"
pip install --editable .
gravitybee --src-dir src --sha file --with-latest --extra-data static --extra-pkgs boto3 --extra-modules boto3
cd .gravitybee\dist\latest
