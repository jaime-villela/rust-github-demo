FROM mcr.microsoft.com/devcontainers/rust:0-1-bullseye
LABEL Name=rustgithubdemo Version=0.0.1
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install clang lld \
    && apt-get autoremove -y && apt-get clean -y
