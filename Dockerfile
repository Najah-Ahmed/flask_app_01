FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . ./
CMD [ "gunicorn", "--workers=2", "--threads=1", "-b 0.0.0.0:5000", "app:app"]
EXPOSE 5000
