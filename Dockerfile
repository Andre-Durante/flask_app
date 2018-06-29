FROM python:3.6-alpine

RUN pip install flask

COPY app.py /flask/app.py

WORKDIR /flask

ENTRYPOINT FLASK_APP=/flask/app.py flask run --host=0.0.0.0
