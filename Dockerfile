FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y

# Copy all files first to the app directory
WORKDIR /TheMovieProviderBot
COPY . .

# Install dependencies
RUN pip3 install -U pip && pip3 install -U -r requirements.txt

# Start the bot
CMD ["/bin/bash", "start.sh"]
