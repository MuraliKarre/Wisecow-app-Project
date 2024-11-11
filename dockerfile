FROM ubuntu:latest

#update packages and install dependencies
RUN apt-get update -y && apt-get install git cowsay fortune netcat-openbsd -y

#adding "/usr/games" directory to your PATH environment variable
#RUN echo "export PATH=$PATH:/usr/games" >> /root/.bashrc



#RUN . /root/.bashrc
#RUN exec bash

#set environment variables
ENV PATH="$PATH:/usr/games"



COPY wisecow.sh /app/wisecow.sh

WORKDIR /app

EXPOSE 4499

CMD ["./wisecow.sh"]