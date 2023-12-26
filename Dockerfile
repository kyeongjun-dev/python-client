FROM python:3.10-slim
ENV PYTHONUNBUFFERED 1
WORKDIR /app
RUN apt-get update -y && apt-get install groff -y
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
CMD ["sleep", "infinity"]
