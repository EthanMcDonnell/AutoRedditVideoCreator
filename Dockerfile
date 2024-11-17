FROM python:3.10.14-slim

RUN apt update && \
apt-get install -y ffmpeg &&\
apt-get clean

COPY requirements.txt app/requirements.txt
WORKDIR /app


RUN pip install --upgrade pip 
RUN pip install -r requirements.txt



CMD ["python3", "main.py"]
