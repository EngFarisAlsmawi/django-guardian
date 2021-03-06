#!/bin/sh

python ./setup.py --version
py.test --cov=guardian

# Test example_project on supported django versions
if [ "$DJANGO_VERSION" = "1.11" ] || \
   [ "$DJANGO_VERSION" = "2.0" ] || \
   [ "$DJANGO_VERSION" = "2.1" ] || \
   [ "$DJANGO_VERSION" = "master" ]; then
    pip install .; 
    cd example_project; 
    python manage.py test;
fi;
