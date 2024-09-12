FROM python:3.11   
LABEL author="sreeharsha Verrapalli" email="sreeharshav@gmail.com"
WORKDIR /app        
ARG T_VERSION=1.9.5
COPY requriments.txt requriments.txt
COPY templates templates
RUN apt update && apt install -y nginx net-tools curl jq tree unzip
RUN pip install -r requirements.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"] 