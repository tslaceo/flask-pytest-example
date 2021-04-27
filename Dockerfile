FROM python
WORKDIR /flask-pytest-example
RUN python --version
RUN pip3 install flask 
RUN pip3 install pytest
RUN pip freeze
COPY . .
CMD ["python", "-u", "app.py"]
