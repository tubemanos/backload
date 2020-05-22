FROM python:3.6

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/


COPY . /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

ENV TZ Europe/Kiev

#EXPOSE 8080

<<<<<<< HEAD
#RUN adduser -D myuser
#USER myuser

CMD gunicorn --bind 0.0.0.0:$PORT app
#CMD ["python", "app.py"]
=======

CMD ["python", "app.py"]
>>>>>>> ac933a5976f3eeb27d92e18f529bba05b77e5b2c
