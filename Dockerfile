# start from Linux with Node 16 installed 

FROM node:16-alpine3.15

# create a working directory and copy all files texcept those in .dockerignore

WORKDIR /src/ 
COPY . .

# Install our dependencies
RUN npm install 

# Set enviromental variable 
ENV PORT=3000

EXPOSE 3000

CMD [ "npm", "start" ]


