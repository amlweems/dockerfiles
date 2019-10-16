FROM python:3

RUN git clone https://github.com/nccgroup/ScoutSuite /usr/src/app
WORKDIR /usr/src/app
RUN pip install -r requirements.txt \
 && python scout.py --help

ENTRYPOINT ["python", "/usr/src/app/scout.py"]
