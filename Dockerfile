FROM python
WORKDIR /flask-pytest-example
RUN python --version
RUN pip3 freeze > requirements.txt
RUN pip3 install --upgrade pip && pip3 install -r requirements.txt
COPY . .
CMD ["python", "-u", "app.py"]
