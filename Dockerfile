FROM python:3
RUN apt-get update
RUN apt-get install -y python
COPY print.py /app/print.py
CMD ["python", "/app/print.py"]
