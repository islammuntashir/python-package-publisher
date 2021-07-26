#!/bin/bash
pip install twine wheel
python setup.py sdist bdist_wheel
twine upload --repository codeartifact dist/* -u aws -p $token