FROM python:3.10
#EXPOSE 5000
WORKDIR /app
COPY ./requiraments.txt requiraments.txt
RUN pip install --no-cache-dir --upgrade -r requiraments.txt
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]