FROM python:3.10-slim

WORKDIR /app

COPY trend-service-python/requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY trend-service-python/ /app/

EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]