FROM cypress/base:10

# Create app directory
WORKDIR /usr/src/app


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY . ./
RUN npm install --save-dev cypress
RUN npm install

# RUN $(npm bin)/cypress verify
# RUN npx cypress run
CMD [ ".//usr/src/app" ]