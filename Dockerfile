FROM python:3.10.8-slim-bookworm

RUN apt update && apt upgrade -y && apt install git -y && apt clean

COPY requirements.txt /requirements.txt

RUN pip3 install --upgrade pip && pip3 install -U -r /requirements.txt

RUN mkdir /TheMovieProviderBot
WORKDIR /TheMovieProviderBot

COPY start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
