# Use a imagem oficial do PostgreSQL a partir do Docker Hub
FROM postgres:latest

# Variáveis de ambiente para definir o nome do banco de dados e a senha do superusuário
ENV POSTGRES_DB FapCov2103
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres

# Crie um volume para armazenar os dados do banco de dados
VOLUME /var/lib/postgresql/data

# Exponha a porta padrão do PostgreSQL (5432)
EXPOSE 5432
