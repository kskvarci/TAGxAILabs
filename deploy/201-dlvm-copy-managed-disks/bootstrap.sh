PATH=/anaconda/envs/py35/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/opt/caffe/build/install/bin/:/usr/local/cuda/bin:/dsvm/tools/cntk/cntk/bin:/dsvm/tools/spark/current/bin:/opt/mssql-tools/bin:/dsvm/tools/torch/bin

# Upgrade PIP
pip install --upgrade pip

# Install TA-Lib and talib
wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
tar -xzf ta-lib-0.4.0-src.tar.gz
cd ta-lib/
./configure --prefix=/usr
make
make install

# Install python modules
pip install azure-cognitiveservices-vision-customvision
pip install azure-cli 
pip install sklearn 
pip install matplotlib 
pip install pandas 
pip install seaborn 
pip install livelossplot
pip install ta-lib

# Install the AzureML meta-package
pip install --upgrade --extra-index-url https://azuremlsdktestpypi.azureedge.net/sdk-release/Preview/E7501C02541B433786111FE8E140CAA1 azureml-sdk --ignore-installed pyYAML