cd c:\temp
pip install wheel
pip install virtualenv
virtualenv venv
venv\Scripts\activate
python -m pip install --upgrade pip
git clone --branch develop https://github.com/pyinstaller/pyinstaller.git
git clone https://github.com/plus3it/watchmaker.git --recursive
git clone --branch rehook https://github.com/YakDriver/pyppyn.git
git clone --branch rehook https://github.com/YakDriver/gravitybee.git
cd watchmaker
git checkout c55a519
cd ..\pyinstaller
pip install --editable .
cd ..\pyppyn
pip install --editable .
cd ..\gravitybee
pip install --editable .
cd ..\watchmaker
pip install --editable .
gravitybee --src-dir src --sha file --with-latest --extra-data static --extra-pkgs boto3 --extra-modules boto3
cd .gravitybee\dist\latest
