#!/usr/bin/bash

if [ -x /usr/bin/git ] ; then
    git clone https://github.com/feathers-dataset/feathersv1-dataset.git; exit 0;
    elif [ -x /usr/bin/wget ] ; then
    wget https://github.com/feathers-dataset/feathersv1-dataset/archive/master.zip; unzip master.zip; exit 0;
    elif [ -x /usr/bin/curl ] ; then
    curl -LOk https://github.com/feathers-dataset/feathersv1-dataset/archive/master.zip; unzip master.zip; exit 0;
    elif [ -x /usr/bin/aria2c ] ; then
    aria2c https://github.com/feathers-dataset/feathersv1-dataset/archive/master.zip; unzip master.zip; exit 0;
else
    echo "Could not find download utils, please download FeathersV1 Dataset manually." >&2
fi
