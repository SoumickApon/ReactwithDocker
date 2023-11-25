#Node.js image as the base image 

FROM node:20.10.0-slim AS development 

# Set the working directory 
WORKDIR /react-project

#Copy package.json and package-lock.json 
COPY package.json .

#install dependencies

RUN npm install

#copy all the files 

COPY . .

#EXPOSE PORT

EXPOSE 5173

CMD ["npm","run","dev"]
