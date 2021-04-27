FROM python
WORKDIR /flask-pytest-example
COPY . requirements.txt RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . .
CMD ["python", "-u", "flask-pytest-example.py"]
