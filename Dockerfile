FROM python:3.7
# FROM python:3.8-slim-buster
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
# RUN sh setup.sh
EXPOSE 8501
# ENTRYPOINT ["streamlit","run"]
#CMD ["app.py"]
ENTRYPOINT ["/bin/sh", "-c","/app/setup.sh && streamlit run app.py"]