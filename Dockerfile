FROM python
WORKDIR /flask-pytest-example
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pip freeze
RUN pytest localtests/
COPY . .
CMD ["python", "-u", "app.py"]
