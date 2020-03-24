FROM python:3

RUN git clone -q --branch 5.8.0 https://github.com/nccgroup/ScoutSuite /usr/src/app
WORKDIR /usr/src/app
RUN pip install -r requirements.txt \
 && python scout.py -v

ENTRYPOINT ["python", "/usr/src/app/scout.py"]
