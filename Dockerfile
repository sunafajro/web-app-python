FROM python:slim

WORKDIR /app

RUN pip install flask

COPY ./static /app/static/
COPY ./templates /app/templates/
COPY ./sample-app.py /app/

EXPOSE 5050

CMD python sample-app.py
