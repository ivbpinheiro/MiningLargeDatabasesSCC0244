FROM jupyter/datascience-notebook

USER root

# Instala o utilitário psql
RUN apt-get update && apt-get install -y postgresql-client

USER jovyan
