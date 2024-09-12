FROM ubuntu:22.04   #downloads from the dockerhub
LABEL support="kurubavenugopal" email="kurubavenugopal1435@gmail.com"
WORKDIR /app        #copy the files of main.py,requriments ,templates etc.. in workdir /app.
ENV AWS_DEFAULT_REGION=us-east-1
ENV AWS_ACCESS_KEY_ID=AKIA6GBMHSALI4YTYBXG
ENV AWS_SECRET_ACCESS_KEY=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
ARG T_VERSION=1.9.1
COPY requriments.txt requriments.txt
RUN apt-get update && apt-get install -y nginx net-tools curl jq



