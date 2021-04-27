FROM python
WORKDIR /flask-pytest-example
RUN python --version
RUN pip install --upgrade pip
RUN pip3 install flask 
RUN pip3 install pytest
COPY . .
CMD ["python", "-u", "app.py"]
