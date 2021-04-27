FROM python
WORKDIR /flask-pytest-example
RUN python --version
RUN pip install --upgrade pip
RUN pip install flask 
RUN pip install pytest
COPY . .
CMD ["python", "-u", "app.py"]
