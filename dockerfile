# Usar a última versão do Ubuntu como imagem base
FROM ubuntu:latest

# Evitar perguntas ao configurar pacotes
ARG DEBIAN_FRONTEND=noninteractive

# Atualizar os pacotes da lista de repositórios
RUN apt-get update && apt-get upgrade -y

# Instalar o TeX Live Full
RUN apt-get install -y texlive-full

# Instalar suporte ao português
RUN apt-get install -y texlive-lang-portuguese

# Limpar caches de pacotes baixados para reduzir tamanho da imagem
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Definir diretório de trabalho
WORKDIR /data

# Manter o contêiner rodando
CMD ["tail", "-f", "/dev/null"]