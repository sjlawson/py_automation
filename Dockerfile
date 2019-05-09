FROM python:3.7.2-slim
ADD . /al_py_automation
WORKDIR /al_py_automation
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install git
RUN apt-get -y install chromedriver
RUN apt-get -y install xvfb
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 8.10.0
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
RUN python manage.py geckodriver_install
RUN npm install -g mountebank
RUN npm install -g cbt_tunnels
CMD ["python", "manage.py", "launch_framework"]
