PATH=/anaconda/envs/py35/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/opt/caffe/build/install/bin/:/usr/local/cuda/bin:/dsvm/tools/cntk/cntk/bin:/dsvm/tools/spark/current/bin:/opt/mssql-tools/bin:/dsvm/tools/torch/bin

# Install the custom vision module for labs 1 and 2
pip install azure-cognitiveservices-vision-customvision

# Install TA-Lib and talib
wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
tar -xzf ta-lib-0.4.0-src.tar.gz
cd ta-lib/
sudo ./configure
sudo make
sudo make install

# Create a new kernel for lab 3
conda create -n azml Python=3.6 cython numpy -y
source activate azml
pip install azure-cli sklearn tensorflow-gpu cntk-gpu keras matplotlib pandas seaborn livelossplot ta-lib
pip install --upgrade azureml-sdk
python -m ipykernel install --user --name azml --display-name "AzureML"