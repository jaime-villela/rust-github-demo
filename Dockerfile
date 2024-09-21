FROM mcr.microsoft.com/devcontainers/rust:0-1-bullseye
LABEL Name=rustgithubdemo Version=0.0.1
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install clang lld \
    && apt-get autoremove -y && apt-get clean -y

# Ensure Rust and Cargo are installed
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Add Cargo to the PATH
ENV PATH="/root/.cargo/bin:${PATH}"
