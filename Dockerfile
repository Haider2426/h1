#Python Flask Webapp DockerFile
#Using Python Image
FROM python:3
#Setting environment variable
ENV PYTHONUNBUFFERED 1
#Making a dir in container
RUN mkdir /code
#Making it our Working Directory
WORKDIR /code
#Copying required libraries for webapplication
COPY requirements.txt /code/
#Installing all required libraries
RUN pip install -r requirements.txt
COPY . /code/
CMD python run.py


