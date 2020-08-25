FROM python:3-alpine

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY tmpl /tmpl
COPY script /script

CMD ["sphinx-autobuild", "/spec/", "/tmp/", "-p", "9000", "-H", "0.0.0.0"]