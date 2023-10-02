# Use a imagem base jupyter/datascience-notebook
FROM jupyter/datascience-notebook:latest

# Troque para o usuário root para executar comandos com privilégios
USER root

# Instala o utilitário psql, psycopg2-binary, SQLAlchemy e ipython-sql
RUN apt-get update && \
    apt-get install -y postgresql-client && 

# Volte para o usuário notebook padrão (não-root)
USER $NB_UID
