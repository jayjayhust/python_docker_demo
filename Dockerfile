# FROM python:3.9.5-alpine  # always report errors on gcc or other stuff, so i quit on alpine
FROM python:3.9.5-slim

WORKDIR /app

# setup mirrors of pip
# RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# ENV PYTHON_PIP_VERSION=23.0.1
# ENV PYTHON_SETUPTOOLS_VERSION=65.5.1
# ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/0d8570dc44796f4369b652222cf176b3db6ac70e/public/get-pip.py
# ENV PYTHON_GET_PIP_SHA256=96461deced5c2a487ddc65207ec5a9cffeca0d34e7af7ea1afc470ff0d746207

COPY ./requirements.txt .

# raise Runt3.9.5-slimn: cannot link a simple C program")
# RUN apt-get update
# RUN apt-get install gcc

# ERROR: Could not build wheels for tiktoken, numpy, pysilk-mod, regex, Pillow, psutil, multidict, pycryptodome, greenlet which use PEP 517 and cannot be installed directly
# 升级pip和setuptools
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt --default-timeout=500

COPY . /app

EXPOSE 8000
CMD [ "python", "app.py"]