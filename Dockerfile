FROM tensorflow/tensorflow:1.5.1-py3

EXPOSE 4430

RUN apt-get update && apt-get install -y \
    python3-pip

# RUN pip3 install tensorflow==1.5

RUN  mkdir /home/tf_files \
     && mkdir /home/scripts \
     && mkdir /home/test_image

COPY scripts/label_image.py /home/scripts
COPY watt2.jpeg /home/test_image

ADD tf_files/ /home/tf_files
