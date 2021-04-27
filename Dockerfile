FROM python
WORKDIR /flask-pytest-example
COPY . requirements.txt
RUN pip install flask 
RUN pip install pytest
COPY . .
CMD ["python", "-u", "app.py"]
