FROM python:3.11
# нужно уточнение версии, использованной при разработке, предположим 3.11. Можно было указать latest, но считается не лучшей практикой, так как могут возникать проблемы с совместимостью

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

