FROM python:3.12.4
RUN pip install poetry
COPY . /src
WORKDIR /src
RUN poetry install
EXPOSE 8501
ENTRYPOINT [ "poetry", "run", "streamlit", "run", "app/app.py", "--server.port=8502". "--server.address=0.0.0.0" ]