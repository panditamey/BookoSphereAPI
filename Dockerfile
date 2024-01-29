FROM python:3.10

WORKDIR /server

ADD ./server /server

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000 

CMD ["python", "main.py"]