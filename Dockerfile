FROM python:3.11
EXPOSE 5000
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN pip install Flask Flask-SQLAlchemy
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]