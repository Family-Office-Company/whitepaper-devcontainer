FROM mcr.microsoft.com/vscode/devcontainers/base:0-bionic

LABEL title="Whitepaper" \
      maintainer="Family Office"

RUN apt-get update
RUN apt-get upgrade -y

RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get -y install --no-install-recommends texlive-full
RUN apt-get -y install --no-install-recommends graphviz
RUN apt-get -y install --no-install-recommends gnuplot
RUN apt-get -y install --no-install-recommends python3
RUN apt-get -y install --no-install-recommends python3-pip
RUN apt-get -y install --no-install-recommends zlib1g-dev
RUN apt-get -y install --no-install-recommends libjpeg-dev
RUN apt-get -y install --no-install-recommends build-essential libssl-dev libffi-dev python3-dev

RUN pip3 install ipykernel --upgrade
RUN pip3 install requests
RUN pip3 install wheel
RUN pip3 install matplotlib
RUN pip3 install pandas
