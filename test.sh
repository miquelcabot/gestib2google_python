#!/bin/bash
source venv/bin/activate
python gestib2google.py -s client_secret.json -g exportacioDadesCentre8_sept_2017.xml -v
deactivate
