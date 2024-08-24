#see webapp1

FROM ubuntu

RUN apt update -y

RUN apt full-upgrade -y && apt install python-pip -y && pip install flask

WORKDIR /opt #this sets a directory inside the container

COPY app.py /opt/app.py # this will copy app.py file that has the python application from your local to the filesystem in the images and subsequently in the container/

ADD # ADD will do the same thing like COPY but as extra it can pull URLs which copy cannot/

LABEL project="Middle_school"

CMD ["python3", "app.py"]

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080