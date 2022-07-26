FROM alpine:3.15
ARG PLEX_URL
ARG PLEX_TOKEN
ARG STREAMABLE_LOGIN
ARG STREAMABLE_PASSWORD
RUN apk --no-cache add build-base
RUN apk --no-cache add tzdata
RUN apk --no-cache add ffmpeg
RUN apk --no-cache add python3
RUN apk --no-cache add python3-dev
RUN apk --no-cache add py-pip
RUN cd /usr/bin \
  && ln -sf python3.9 python
ENV TZ=America/New_York
ENV PLEX_URL=$PLEX_URL
ENV PLEX_TOKEN=$PLEX_TOKEN
ENV STREAMABLE_LOGIN=$STREAMABLE_LOGIN
ENV STREAMABLE_PASSWORD=$STREAMABLE_PASSWORD
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN set FLASK_APP=main.py
CMD flask run --host 0.0.0.0
