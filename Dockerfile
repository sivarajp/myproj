FROM python:3.7-alpine
COPY app.py /app
COPY ./commonlib/commonlib /app/commonlib
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["gunicorn","-b 0.0.0.0:8080", "-w 4", "app:app"]
