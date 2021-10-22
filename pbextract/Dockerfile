FROM python:3

WORKDIR /app
RUN pip install protobuf \
 && git clone https://github.com/marin-m/pbtk

ENTRYPOINT ["python3", "/app/pbtk/extractors/from_binary.py"]
