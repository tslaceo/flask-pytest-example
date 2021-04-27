FROM python
WORKDIR /flask-pytest-example
RUN python --version
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . .
CMD ["python", "-u", "app.py"]
