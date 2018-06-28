FROM python:3.6
MAINTAINER molguin <molguin@kth.se>

RUN apt update -q && apt install git && apt clean
RUN cd / && git clone https://github.com/molguin92/CPULoadGenerator.git /CPULoadGenerator
RUN pip install -r /CPULoadGenerator/requirements.txt

WORKDIR /CPULoadGenerator
ENTRYPOINT ["./CPULoadGenerator.py"]
CMD ["--help"]
