FROM node:9.5.0
ARG PROXY
ARG USER_ID
ENV http_proxy $PROXY
ENV https_proxy $PROXY
RUN apt-get update && apt-get install -y sudo
RUN export uid=$USER_ID && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:0:developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:0 -R /home/developer
USER developer
RUN git config --global user.name "developer"
RUN git config --global user.email "developer@email.com"
#RUN mkdir /home/developer/.npm-global
#ENV PATH=/home/developer/.npm-global/bin:$PATH
#ENV NPM_CONFIG_PREFIX=/home/developer/.npm-global
#RUN npm install -g @angular/cli 

WORKDIR /workspace/angular
