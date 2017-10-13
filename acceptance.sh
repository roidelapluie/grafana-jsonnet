set -ex
virtualenv venv
. venv/bin/activate
pip install pytest-selenium
python acceptance.py
