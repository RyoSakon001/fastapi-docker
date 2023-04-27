FROM python:3.9
ENV PYTHONUNBUFFERED 1
RUN mkdir /workspace
WORKDIR /workspace
COPY requirements.txt /workspace/
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /workspace/