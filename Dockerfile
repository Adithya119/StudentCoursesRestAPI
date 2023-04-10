FROM python:3.8-alpine3.15
ADD . flask/
ENV MYSQL_DATABASE='adithyadb'
ENV MYSQL_USER='adithya'     
ENV MYSQL_PASSWORD='adithya'
ENV MYSQL_SERVER_PORT='3306'
ENV MYSQL_SERVER='localhost'
EXPOSE 8080
WORKDIR flask
RUN pip install -r requirements.txt
ENTRYPOINT ["python","app.py"]
