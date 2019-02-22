FROM python:latest
RUN pip install jupyter
ADD jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
ADD cert.key /root/.jupyter/cert.key
ADD cert.pem /root/.jupyter/cert.pem
RUN mkdir -p /opt/notebooks
EXPOSE 8888
VOLUME /opt/notebooks
CMD jupyter notebook /opt/notebooks