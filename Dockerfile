FROM python:3.11
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN pip install Flask Flask-SQLAlchemy
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]