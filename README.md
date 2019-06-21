# django_postgresql_gunicorn_nginx_docker_example
Starter project uses django, postgresql, gunicorn, nginx, docker.

## Requirements
- Docker
- Docker Compose

## Build and Run
Build environment:
```shell
docker-compose build
```

Run app:
```shell
docker-compose up
```
This project uses local environment variables, an example of default settings is in the [.env.example] file.
In production you should uncomment [.env] line in the [.gitignore] file.<br/>

The API is available at localhost on port 8000, for example `http://localhost:8000/`.<br />
You can change the listening ports by editing the [gunicorn_conf.py] and [docker-compose.yml] files.

[.env]: <./.env>
[.env.example]: <./.env.example>
[.gitignore]: <./.gitignore>
[gunicorn_conf.py]: <django_project/gunicorn_conf.py>
[docker-compose.yml]: <./docker-compose.yml>