FROM python:3.11-slim

ENV POETRY_VERSION=1.8.2

ENV PATH="/root/.local/bin:$PATH"

RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    libpq-dev \
    python3-dev \
    && curl -sSL https://install.python-poetry.org | python3 - \
    && poetry config virtualenvs.create false \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app