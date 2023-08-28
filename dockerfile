FROM python:3.10

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

WORKDIR /app
COPY . .

ENV PATH="$PATH:/app/scripts"

CMD ["python3","main.py","server" ,"start"]
