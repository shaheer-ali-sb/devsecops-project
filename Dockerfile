FROM ubuntu:18.04
RUN apt update && apt install -y python3
WORKDIR /app 
COPY . .
CMD ["python3", "app.py"]
