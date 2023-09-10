FROM jupyter/datascience-notebook

USER root

# Instala o utilitário psql
RUN apt-get update && apt-get install -y postgresql-client

# Atualize os pacotes e instale o 7-Zip
RUN apt-get update && apt-get install -y p7zip-full

# Defina uma variável de ambiente opcional para o caminho do 7-Zip
ENV SEVENZIP_PATH /usr/bin/7z

# Diretório de trabalho padrão
WORKDIR /app

# Comando padrão (opcional)
CMD ["/bin/bash"]

USER jovyan
