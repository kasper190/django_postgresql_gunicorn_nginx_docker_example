FROM python:3.7.3

COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app

VOLUME /app/media
VOLUME /app/static

EXPOSE 8001

ENTRYPOINT "./entrypoint.sh"
