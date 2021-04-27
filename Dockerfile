FROM python
WORKDIR /flask-pytest-example
COPY . requirements.txt
RUN pip install flask && pip install pytest
COPY . .
CMD ["python", "-u", "app.py"]
