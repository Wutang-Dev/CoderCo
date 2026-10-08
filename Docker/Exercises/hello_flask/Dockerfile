FROM python:3.8-slim
WORKDIR /app
COPY . .
EXPOSE 5000
RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    libmariadb-dev \
    pkg-config

RUN pip install flask mysqlclient

EXPOSE 5000

CMD ["python", "app.py"]