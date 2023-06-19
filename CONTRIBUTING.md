# CONTRIBUTING

## How to run the Dockerfile locally : 

FROM python:3.10
EXPOSE 5000
WORKDIR /app
COPY ./requiraments.txt requiraments.txt
RUN pip install --no-cache-dir --upgrade -r requiraments.txt
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]


docker run -dp 5000:5000 -w /app -v "$(pwd):/app" aplikacija sh -c 
flask run