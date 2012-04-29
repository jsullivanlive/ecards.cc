#!/bin/bash

export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

if command -v deactivate 
then
  deactivate
fi

if [ -d virtualenv ] 
then 
  rm -fr virtualenv
fi

virtualenv virtualenv --dist --no-site-packages
source virtualenv/bin/activate
virtualenv/bin/pip install -r requirements.txt

