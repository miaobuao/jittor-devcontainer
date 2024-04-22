FROM nvidia/cuda:12.4.1-runtime-ubuntu20.04

RUN echo \
    "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse \n \
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse \n \
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse \n \
    deb http://security.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse" > /etc/apt/sources.list \
    && apt update \
    && apt install -y python3 python3-pip git wget curl \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip3 install  \
    numpy \
    tqdm \
    pillow \
    notebook \
    matplotlib \
    jittor 
