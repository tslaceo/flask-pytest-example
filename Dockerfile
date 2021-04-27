FROM python
WORKDIR /flask-pytest-example
RUN python --version
COPY requirements.txt .
RUN pip3 install --upgrade pip && pip3 install -r requirements.txt
RUN pip3 freeze
COPY . .
CMD ["python", "-u", "app.py"]
