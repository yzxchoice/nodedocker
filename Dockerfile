FROM node:10-alpine

RUN mkdir -p /home/Service             
WORKDIR /home/Service                  

COPY . /home/Service                   
RUN npm install --registry=http://10.63.5.12:8081/repository/npmgroup/                       

EXPOSE 8888
CMD [ "npm", "start" ]