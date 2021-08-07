FROM python:3.9.6

WORKDIR /python-playground

RUN python3 -m venv venv
RUN . venv/bin/activate

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY main.py main.py

ENTRYPOINT [ "python", "main.py" ]