FROM alpine

RUN apk update

# install Pandoc
RUN apk add pandoc texlive-full

# install Mermaid filter
RUN apk add chromium
RUN apk add npm
RUN npm install -g mermaid-filter 

# install Uubuntu LaTeX font
RUN apk add curl unzip make
WORKDIR /tmp
RUN curl -L -o ubuntu-latex-fonts.zip https://github.com/tzwenn/ubuntu-latex-fonts/archive/refs/heads/master.zip
RUN unzip ubuntu-latex-fonts.zip && rm ubuntu-latex-fonts.zip
RUN make -C /tmp/ubuntu-latex-fonts-master install
RUN rm -fr ubuntu-latex-fonts-master

WORKDIR /data
