FROM python
WORKDIR /flask-pytest-example
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pip freeze
#RUN chmod 777 /flask-pytest-example/tests
COPY . .
RUN pytest /flask-pytest-example/tests/test_routes.py
EXPOSE 5000
CMD ["python", "-u", "app.py"]
