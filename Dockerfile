FROM python:3-alpine

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY common /common

CMD ["sphinx-autobuild", "/spec/", "/html/", "-p", "9000", "-H", "0.0.0.0", "-c", "/common"]