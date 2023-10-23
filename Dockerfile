FROM python:3.9-slim-bullseye as pybase
ENV PYTHONWRITEBYTECODE=1
ENV PYTHONBUFFERED=1
ENV PIP_ROOT_USER_ACTION=ignore
RUN \
    apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        postgresql-client \
        tini
RUN \
    python3 -m pip install --upgrade \
        pip \
        jupyter \
        stac-fastapi-pgstac \
        pystac \
        pystac-client \
        uvicorn \
        pypgstac[psycopg]==0.7.10
