#!/bin/bash
set -x #echo on

# create a new conda environment with Python 3.6, numpy and cython
conda create -n azml Python=3.6 cython numpy

# Activate the conde environment
source activate azml

# install azure-cli
pip install azure-cli sklearn tensorflow-gpu cntk-gpu keras matplotlib pandas seaborn livelossplot

# install or update azureml meta-package
pip install --upgrade azureml-sdk

# add azml conda environment as a new Jupyter Kernel
python -m ipykernel install --user --name azml --display-name "AzureML"