FROM python:3.11-alpine
LABEL maintainer="john lee leadway.com"

WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app/
EXPOSE 80
CMD ["python", "app.py"]
