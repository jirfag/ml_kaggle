FROM kaggle/python0:latest

RUN pip install jupyter
RUN pip install networkx
RUN pip install git+https://github.com/mshvartsman/hyperopt.git@fmin-fix

EXPOSE 8888
CMD ["sh", "-c", "jupyter notebook --port=8888 --no-browser --ip=0.0.0.0"]
