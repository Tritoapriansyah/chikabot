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
  
  RUN npm install
  RUN ls
  
  CMD ["npm", "start"]
