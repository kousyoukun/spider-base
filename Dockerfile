FROM python:3.7-buster
LABEL spider-base.image.author="kousyoukun"
RUN apt-get update \
    && apt-get -y install cron vim tesseract-ocr chromium chromium-driver curl openssh-server iproute2 \
    && rm -rf /var/lib/apt/lists/* \
    && rm /bin/sh && ln -s /bin/bash /bin/sh
CMD ["python3"]
