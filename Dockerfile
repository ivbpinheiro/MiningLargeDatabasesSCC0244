FROM jupyter/datascience-notebook:latest

USER root

ENV NB_UID=1234 \
    NB_GID=5678 

COPY ./requirements.txt /tmp/requirements.txt

RUN apt-get update && \
    apt-get install -y postgresql-client sudo && \
    pip install -r /tmp/requirements.txt && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_UID
