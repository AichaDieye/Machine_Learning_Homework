# Dockerfile to build a flask app

#Download the image python
 FROM python:3.9

 #Mean I am actually in the image and I am navigate in the working directory /usr/ap
 WORKDIR /usr/app

 #Copy requirements.txt inside the image
 COPY requirements.txt

 #For running something inside the image
 RUN pip install -r requirements.txt
 
 COPY app.py


 CMD ["python", "app.py"]