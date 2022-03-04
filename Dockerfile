FROM python:3.9

WORKDIR /workdir

RUN pip install poetry

COPY poetry.lock pyproject.toml /workdir/

RUN poetry config virtualenvs.create false
RUN poetry install --no-dev

COPY ./app /workdir/app