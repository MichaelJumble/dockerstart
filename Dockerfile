FROM debian:jessie-slim 

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
