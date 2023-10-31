#base image
FROM node:alpine

#create a directory
WORKDIR /usr/nodeapp

#bring all the files to my working directory

COPY ./ ./npm_modules 

#now npm_modules are again created
RUN npm install

CMD ["npm", "start"]