FROM python:3.10.8-slim-bullseye

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

RUN mkdir /TheMovieProviderBot
WORKDIR /TheMovieProviderBot
COPY start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
