FROM python:3.10.14

RUN apt-get update && \
    apt-get install -y default-jre && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install poetry

COPY . /app
WORKDIR /app

RUN poetry install

CMD ["poetry", "run", "jupyter", "notebook", "--ip", "0.0.0.0" , "--allow-root"]