FROM python:3.6-slim

COPY . /pytest_docker

WORKDIR /pytest_docker

RUN pip install --no-cache-dir -r requirements.txt

RUN ["pytest", "-v"]

CMD tail -f /dev/null
