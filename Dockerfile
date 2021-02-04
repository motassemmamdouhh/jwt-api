from python:stretch

copy . /main
workdir /main
run pip3 install --upgrade pip
run pip3 install flask
run pip3 install pyjwt
run pip3 install gunicorn
run pip3 install pytest

entrypoint ["gunicorn","-b",":8080","main:APP"]

