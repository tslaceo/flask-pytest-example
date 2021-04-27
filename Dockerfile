FROM python
WORKDIR /flask-pytest-example
RUN pip freeze > requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . .
CMD ["python", "-u", "app.py"]
