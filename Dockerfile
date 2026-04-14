FROM python:3.14-slim

WORKDIR /app

RUN apt-get update && apt-get install -y gcc python3-dev && rm -rf /var/lib/apt/lists/*

COPY requirements.txt app.py ./

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]