FROM python:3.7
# FROM python:3.8-slim-buster
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
# RUN chmod +777 /app/setup.sh
EXPOSE 8501
ENTRYPOINT ["streamlit","run"]
CMD ["app.py"]

# streamlit-specific commands for config
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
RUN mkdir -p ~/.streamlit
RUN bash -c 'echo -e " [general]\n email = \"\"\n " > ~/.streamlit/credentials.toml'
RUN bash -c 'echo -e " [server]\n enableCORS = false\n " > ~/.streamlit/config.toml'