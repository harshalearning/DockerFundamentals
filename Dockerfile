#There are basically 3 steps

#step1: Getting base image

FROM alpine


#step2: Instal Software

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories
#This is the path where program is present, we are giving this because the OS doesn't know the path of software

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories

RUN apk update
#we need to run a command on alphine, we use apk
RUN apk add mongodb=3.4.4-r0
#Add the version too for good results

#step2.5: Configure that software

VOLUME ["/data/db"] 
#folder to run mongodb

WORKDIR /data 
#creating a new work directory

EXPOSE 27017
#as it is DB it need a port for traffic



#step3: set default comments 
CMD ["mongod"] 
#default, tostart deamon

#In total it will create seperate containers and form image, then cache the containerID.