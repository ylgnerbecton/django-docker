FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN mkdir /config
WORKDIR /config
ADD requirements.txt /config/
RUN pip install -r requirements.txt
ADD . /config/

EXPOSE 8000