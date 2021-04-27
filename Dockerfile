FROM python
WORKDIR /flask-pytest-example
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pytest tests/
RUN pip freeze
COPY . .
CMD ["python", "-u", "app.py"]
