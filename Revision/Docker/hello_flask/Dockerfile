FROM python:3.15.2-slim AS build
WORKDIR /app
RUN apt-get update && apt-get install -y default-libmysqlclient-dev build-essential pkg-config  && rm -rf /var/lib/apt/lists/*
COPY . .
RUN pip install flask mysqlclient


FROM python:3.15.2-slim AS final
WORKDIR /app
COPY --from=build /app /app
EXPOSE 5000
CMD ["python","app.py"]