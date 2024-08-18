# Используем официальный образ Python
FROM python:3.9-slim-buster

# Установим рабочую директорию внутри контейнера /app
WORKDIR /app

# Добавим текущую директорию внутри контейнера /app
ADD ./app /app
ADD ./data/data.csv /app/data.csv
ADD ./app/requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# Запустим приложение при запуске контейнера
ENTRYPOINT ["python", "app.py"]