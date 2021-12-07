FROM nikolaik/python-nodejs:latest

RUN apt-get update && \
  apt-get install -y \
  neofetch \
  chromium \
  ffmpeg \
  webp \
  wget \
  mc \
  imagemagick
  
  COPY package.json .
  RUN mkdir /Alphab0t10
  WORKDIR /Alphab0t10
  COPY . /Alphab0t10
  ENV TZ=Asia/Jakarta
  RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
  
  RUN npm install
  
  RUN ls
  
  EXPOSE 5000
  
  CMD ["npm", "start"]
