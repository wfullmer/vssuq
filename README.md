# VSSUQ repo

This is a dataset repository to store the measurements and other data associated with the 
VSSUQ experiment. You can find the rendered `html` on our [github pages](https://wfullmer.github.io/vssuq/).
To build the docs locally, 
```
git clone https://github.com/wfullmer/vssuq.git
cd vssuq/docs/
make clean && make html 
firefox _build/html/index.html
```

You will need to have `sphinx` and the RTD theme installed, e.g., 
```
pip install sphinx sphinx-rtd-theme
```
or
```
sudo apt-get install python3-sphinx
sudo apt-get install python3-sphinx-rtd-theme
```
 
