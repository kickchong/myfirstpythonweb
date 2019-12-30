FROM centos:latest

WORKDIR /home/albert/python/myfirstpythonweb

RUN yum install nginx -y && \
	yum install python3-virtualenv net-tools -y && \
	pip3 install gunicorn 


COPY myfirst.py myfirst.py
COPY gun gun

#RUN gunicorn -w 2 myfirst:app -b 127.0.0.1:8000 --daemon

EXPOSE 8000

#ENTRYPOINT ["gunicorn"]
CMD ["gunicorn","-w", "2","myfirst:app","-b","172.17.0.2:8000"] 
