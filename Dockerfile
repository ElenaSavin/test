FROM python
RUN pip install flask
COPY . /app
CMD python /app/app.py
