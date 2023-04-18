FROM python:3-alpine

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY tmpl /tmpl
COPY script /script

CMD ["sphinx-autobuild", "/spec/", "/tmp/", "--port", "9000", "--host", "0.0.0.0"]
