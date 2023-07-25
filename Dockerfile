FROM python:3.10
ENV PYTHONUNBUFFERED 1
WORKDIR /app

COPY . .

RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN adduser --disabled-password --no-create-home django-user

EXPOSE 8000

USER django-user