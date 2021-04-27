FROM python:2
WORKDIR /flask-pytest-example
RUN python --version
RUN pip2 freeze > requirements.txt
RUN pip2 install --upgrade pip && pip2 install -r requirements.txt
COPY . .
CMD ["python", "-u", "app.py"]
