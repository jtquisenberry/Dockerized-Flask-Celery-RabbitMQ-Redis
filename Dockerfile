FROM python:latest

# add requirements.txt to the image
ADD requirements.txt /app/requirements.txt

ADD scripts/run_web.sh /scripts/run_web.sh
ADD scripts/run_celery.sh /scripts/run_celery.sh

# set working directory to /app/
WORKDIR /app/

# install python dependencies
RUN pip install -r requirements.txt

# install python Pillow
RUN pip install Pillow

# create unprivileged user
RUN adduser --disabled-password --gecos '' app  

