FROM mcr.microsoft.com/vscode/devcontainers/base:0-bionic

LABEL title="Whitepaper" \
      maintainer="Family Office"

RUN apt-get update \
    && apt-get upgrade -y \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends texlive-full graphviz gnuplot
