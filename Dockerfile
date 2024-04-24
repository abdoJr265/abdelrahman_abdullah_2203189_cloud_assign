FROM jupyter/datascience-notebook
WORKDIR /prog
COPY books.csv /prog
COPY notebook.ipynb /prog
EXPOSE 8888
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]