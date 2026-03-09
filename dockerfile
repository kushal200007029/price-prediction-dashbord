FROM python:3.10-slim

WORKDIR /app

COPY trend-service-python/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY trend-service-python/ .

EXPOSE 8501

CMD ["python", "-m", "streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]