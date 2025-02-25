# Базовый образ n8n
FROM n8nio/n8n:latest

# Устанавливаем Python и нужные пакеты
USER root
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 py3-pip curl
RUN pip3 install --no-cache --upgrade pip setuptools
RUN pip3 install telethon asyncio python-dotenv

# Переключаемся обратно на пользователя n8n
USER node