# Dockerfile to build a flask app

#Download the image python
 FROM python:3.9

 #Mean I am actually in the image and I am navigate in the working directory /usr/ap
 WORKDIR /usr/app

COPY requirements.txt .

#For running something inside the image
 RUN pip install -r requirements.txt

 #That means copy all the things in my actual directory inside my image
 COPY . .

#Open the serveur you use
EXPOSE 5000

CMD flask run --host=127.0.0.1 --port=5000
