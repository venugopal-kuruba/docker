FROM python:3.11   #downloads from the dockerhub
LABEL support="kurubavenugopal" email="kurubavenugopal1435@gmail.com"
WORKDIR /app        #copy the files of main.py,requriments ,templates etc.. in workdir /app.
ARG T_VERSION=1.9.5
COPY requriments.txt requriments.txt
COPY templates templates
RUN apt-get update && apt-get install -y nginx net-tools curl jq tree unzip
RUN pip install -r requirements.txt
ADD https://releases.hashicorp.com/terraform/${T_VERSION}/terraform_${T_VERSION}_linux_amd64.zip terraform _${T_VERSION}_linux_amd64.zip
CMD ["uvicorn", "main:app", "--host", "0.0.0.0","--port", "80"] 