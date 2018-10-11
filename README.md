# GitProjekt Starter

Create easy your Application out of a GitHub Projekt into a Docker Container.

- Only Docker Environment installed or use PWD (https://play-with-docker.com)
- No changes on Host/CLI Environment
- Easy to check and test Applications.




## Create starter image

You can create a simple runtime Environment Image. Within this image the GitHub projekt will be cloned.
- You will need one Dockerfile to build this (sample).
> FROM debian:jessie-slim 
#can start with any base Docker Image that works for you
RUN apt-get update
RUN apt-get install -y git-core make
RUN echo "#!/bin/bash\n" > /startscript.sh
RUN echo "mkdir github\n" >> /startscript.sh
RUN echo "cd github\n" >> /startscript.sh
RUN echo "git clone \$github\n" >> /startscript.sh
RUN echo "cd *\n" >> /startscript.sh
RUN echo "make dockerstart\n" >> /startscript.sh
RUN chmod +x /startscript.sh
CMD /startscript.sh



    docker build <mystartimg/v1> .

Create an image with one startscript.sh that catch  GitHub URL from the environment value.


## Start App

You can start the GitHubProject now:

**`docker run -p 3000:3000 -e github='<GitHubURL>' -it <mystartimg/v1>`**


## Change Makefile 

Addapt Makefile to build up needed environment.  Should be the same as local installation.

