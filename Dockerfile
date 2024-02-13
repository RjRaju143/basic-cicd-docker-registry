ARG PYTHON_VERSION=3.12.1
FROM python:${PYTHON_VERSION}-slim AS base
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV DEBUG=1
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install --upgrade pip setuptools
RUN python -m pip install -r requirements.txt
EXPOSE 8000
CMD gunicorn 'app.wsgi' --bind=0.0.0.0:8000
