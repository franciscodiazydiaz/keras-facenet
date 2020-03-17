FROM jupyter/tensorflow-notebook:latest

ADD requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt
