Workshop da Jornada de Dados, intitulado:
*Infra, Linux, Docker*

git clone: gh repo clone AnaRitaRangel/docker-wks
cd docker-wks

# Buildar a imagem
docker build -t minha-primeira-imagem-mar25 .

# Criar o container
docker run -d -p 8501:8501 --name my-first-container-mar25 minha-primeira-imagem-mar25