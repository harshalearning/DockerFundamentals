DOCKER

    PROBLEM STATEMENT: 
    When you design a project and works completely fine on your machine and keeps failing on the colleagues machine, the project usually fails to run, when moved from one place to other, irrespective of the language.
    Problem is, debate starts and developer says evrything is fine and colleague comes with diffferent scenarios for possibility of failure.

    To resolve this, Docker comes into picture.

    Docker is designed to address isuues "that works on my machine". It is like a shaeet(you can put whatever you want) which is compatible with anything. This contains everything you put and so with the data given it works everywhere and same at every machine.
    It is also known as social containers, it allows you to share the containers just as your social media things.

    Docker containers are the one which has a package including of 
    -- Code
    -- dependencies
    -- configurations
    -- process
    -- Networking
    -- OS and many more.

    Docker is client side application.
    This is a service and can be deployed on any server.

What is Docker?

    Docker is nothing but a platform, which implements the concept containerization. containerization in simple words is nothing but the process of containers form and work.

Docker Architecture:


    Docker Lifecycle :

    We create a docker file, by filling the required things from template.
    With the help of BUILD command, docker image is created.
    Image is further converted to docker container, with running RUN command.
    Once the conatoiner is created, we push that to public/private registries.


DOCKER Installation:

    *Create Account - go to docker.com --> create an account 
    *Download Docker - download docker for windows
    *Install Docker - double click on the downloaded file and instal.to have docker up and running - go to start button and search for Docker --> Open the downloaded application for desktop,then sigin again with the credentials account was created to have Docker up and running.
    *Verify - Go to your git bash/power shell and run commands Docker and Docker version. It should give you some Information.


    Hola! you have docker downloaded and installed. Which is up and running.

    
    Now we will try to run hello world on docker.

    We can find official image of hello world in docker hub (https://hub.docker.com/_/hello-world). With this we could directly use docker pull hello-world. 
    But we are not going to do that insted, we will do as before docker run hello-world.

    ![Alt text](image-1.png)
    
    We remember at the first try we got failure message as included in the message above, we will discuss regarding this after a bit.
    Now, lets try running it again, the same command.

    ![Alt text](image-2.png)

    It suceeded now, running the hello world. How ? docker client simply contacts the docker hub if the hello-word image is existing because it didn't find it in local, if yes, then it pulls that image and forms a container and displays it to us with the help of docker client.

What is container in Docker:
    Hardware + OS + Kernel + system applications + Application

    Some part of everything above is called container. to save some dependencies such as previous versions, such as secuity thinga, namespaces etc.


VM vs Docker
 
    VM : A layer of hypervisor is setup and has the seperate (entire OS, config files and App) lot of packages combined together. It has set up virtually for use in cloud. But the only downside is it doesn't have ability to upgrade/downgrade resources based on requirement. Which has been adding a lot of cost on the users at non-utilizing time.

    ![Alt text](image-4.png)

    Docker: It is almost similar to virtualization, but it has pack of (hyperviser, OS from server/VM, Docker and container with only mandatory files for system execution from linux but not whole OS).

    ![Alt text](image-3.png)


Docker Image: 

    It is basically of 2 layers 
    1) Config/file - This can be captured by snapshot feature provided by Docker. Also eco system on which we write our application.
    2) Default commands - for exmample we worked on hello-world, there is some basic command which helps us throughing that back.


    We will try to explore Busybox from hub.docker.com, which is official image. It basically has UNIX utilities as shown in image.

    ![Alt text](image-5.png)

    ![Alt text](image-6.png)

    The below image displays all the files that busy box contain, these are the files we get along with pulling of busybox.

    ![Alt text](image-7.png)

    

    
