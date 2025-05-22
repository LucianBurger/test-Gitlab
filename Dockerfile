FROM python:3.12-slim

WORKDIR /flask-example

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py config.py database.py /flask-example/
COPY templates /flask-example/templates
COPY static /flask-example/static

EXPOSE 8000
netsh interface ipv4 show excludedportrange protocol=tcp

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
