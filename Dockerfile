FROM python:3.6

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

COPY . /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

ENV TZ Europe/Kiev

#EXPOSE 8080

RUN useradd -D myuser
USER myuser

CMD gunicorn --bind 0.0.0.0:$PORT app.py
#CMD ["python", "app.py"]


#CMD ["python", "app.py"]

