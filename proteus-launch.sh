#!/bin/bash
cd /home/proteus/Desktop/GitHub
chmod -R 777 .
chmod g+s .
edm run -e MORPHEUS36 -- python -m Proteus.MORPHEUS.MAIN_APP
