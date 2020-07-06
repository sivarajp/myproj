FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN ln -s commonlib/commonlib commonlib
CMD ["gunicorn","-b 0.0.0.0:8080", "-w 4", "app:app"]
