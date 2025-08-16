# ...existing code...
FROM python:3.12
WORKDIR /usr/local/app

# copy the correct requirements file and install deps
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# copy the rest of the app
COPY . .

EXPOSE 5000
CMD ["python", "app.py"]
# ...existing code...