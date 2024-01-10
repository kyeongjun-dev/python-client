FROM python:3.10-slim
ENV PYTHONUNBUFFERED 1
WORKDIR /app
RUN apt-get update -y && apt-get install vim groff procps -y
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN useradd -u 1001 -g 0 -m -d /home/mongodb -s /bin/bash -c "Default Application User" mongodb
# RUN chmod 2777 /data/db
CMD ["sleep", "infinity"]
