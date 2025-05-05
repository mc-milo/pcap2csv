FROM python:3.11.12-bullseye

WORKDIR /app

ENV PCAPS_DIR="/app/pcaps"

RUN mkdir -p /app/split_temp /app/csv_files /app/output ${PCAPS_DIR}

RUN chmod 777 /app/split_temp /app/csv_files /app/output ${PCAPS_DIR}

RUN apt-get update && apt-get install -y tcpdump libpcap-dev

RUN apt-get update && apt-get install -y python3 python3-pip
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . /app/

CMD ["python3", "/app/Generatating_dataset.py"]