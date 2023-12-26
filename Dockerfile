FROM python:3.10-slim
ENV PYTHONUNBUFFERED 1
WORKDIR /app
RUN apt-get update -y && apt-get install groff -y
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN useradd -u 1001 -g 0 -d /home/mongodb -s /sbin/nologin -c "Default Application User" mongodb
CMD ["sleep", "infinity"]
