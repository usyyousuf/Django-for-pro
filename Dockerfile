FROM python:3.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED  1

WORKDIR /pro

COPY Pipfile Pipfile.lock /pro/
RUN pip install pipenv && pipenv install --system

COPY . /pro/