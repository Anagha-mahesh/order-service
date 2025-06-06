FROM python:3.9

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

ENV PYTHONPATH=/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8002"]
