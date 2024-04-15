
FROM python:3.9

RUN pip install pipenv


WORKDIR /app

COPY . /app

RUN pipenv install --system --deploy

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
