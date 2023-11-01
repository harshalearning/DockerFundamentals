FROM node:alpine

WORKDIR /var/app

#We will copy the working file from local macj=hine to container

COPY ./package.json ./

RUN npm install

#copy all the working files from local to conatiner
COPY . .

CMD ["npm", "start"]