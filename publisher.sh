#!/bin/bash
pip install twine wheel
python setup.py sdist bdist_wheel
export token=$(aws codeartifact get-authorization-token --domain hishab --domain-owner 140370042521 --query authorizationToken --output text)
twine upload --repository codeartifact dist/* -u aws -p $token