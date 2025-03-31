# A imagem do Python que vou usar
FROM python:3.12.4
# Os comandos necessários para instalar o poetry
RUN pip install poetry
# Copiar tudo que está na minha pasta e jogar na pasta /src que o Docker irá criar
COPY ./src
# Muda para o diretorio de trabalho (essa pasta criada)
WORKDIR /src
RUN poetry install
# 'Abrir' a porta que o Streamlit usa
EXPOSE 8501
# É o que eu escrevo no terminal quando quero rodar o programa
# (minha 'deixa') + a porta e o local host
ENTRYPOINT [ 'streamlit', 'run', 'app.py', 'server.port=8501', '--server.address=0.0.0.0' ]


