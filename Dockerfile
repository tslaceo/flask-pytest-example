FROM python
WORKDIR /flask-pytest-example
RUN python --version
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pip freeze
COPY . .
CMD ["python", "-u", "app.py"]
