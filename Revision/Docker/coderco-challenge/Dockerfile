FROM python:3.15.2-slim
WORKDIR /app
COPY . .
RUN pip install flask redis
EXPOSE 5005
CMD ["python", "count.py"]