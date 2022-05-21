FROM nikolaik/python-nodejs:python3.7.4-nodejs14

RUN apt-get update && apt-get install -y curl unzip

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip && ./aws/install

RUN npm install -g aws-cdk@2.25.0

# COPY ./hello_world/requirements.txt ./
# RUN pip3 install -r requirements.txt