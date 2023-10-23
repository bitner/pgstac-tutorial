#!/bin/bash
jupyter trust /tutorial/tutorial.ipynb
jupyter trust /tutorial/fetchpcdata.ipynb
tini -s -- jupyter notebook --allow-root --autoreload --ip=0.0.0.0 --port 8891 --NotebookApp.token= /tutorial/tutorial.ipynb
