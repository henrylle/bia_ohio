FROM ubuntu:22.04

#Dependencias para a instancia
RUN apt-get update -y && apt-get install git curl -y

#Instalando o node
RUN curl -SLO https://deb.nodesource.com/nsolid_setup_deb.sh
RUN chmod 500 nsolid_setup_deb.sh
RUN ./nsolid_setup_deb.sh 21
RUN apt-get install nodejs -y

#Baixando a bia no diretorio /home
WORKDIR /home
RUN git clone https://github.com/henrylle/bia 

WORKDIR /home/bia

ENTRYPOINT ["/bin/bash"]
