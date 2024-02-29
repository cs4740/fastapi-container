FROM python:3.9-alpine
COPY ./app /app
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt
CMD cd /app && uvicorn main:app --host 0.0.0.0 --port 80
