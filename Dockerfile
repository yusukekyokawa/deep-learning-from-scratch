FROM continuumio/anaconda3:5.1.0

WORKDIR /code
# ADD requirements.txt /code/
RUN pip install --upgrade pip\
    && apt-get install -y libgl1-mesa-dev
    # && pip install --no-cache-dir -r requirements.txt

# RUN conda update -n base conda \
#   && conda create -n tensorflow-env python=3.6 \
#   && . activate tensorflow-env \
#   && conda install tensorflow

RUN conda env update \
&& conda install keras\
&& conda install tensorflow