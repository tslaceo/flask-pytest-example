FROM python
WORKDIR /flask-pytest-example
RUN python --version
RUN pip freeze > requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pytest
COPY . .
CMD ["python", "-u", "app.py"]
