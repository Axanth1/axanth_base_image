FROM python:3.12-slim

ENV POETRY_VERSION=2.1.0

RUN apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    libpq-dev \
    curl \
    && curl -sSL https://install.python-poetry.org | python3 - --version $POETRY_VERSION \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="/root/.local/bin:$PATH"

WORKDIR /project

CMD ["sleep", "infinity"]