FROM node:22-alpine


WORKDIR /app


# Copy in the source code
COPY . .
EXPOSE 8081

RUN npm install

# Setup an app user so the container doesn't run as the root user
# RUN useradd app
# USER app

# CMD ["npm", "run", "dev"]
CMD ["npm", "run", "dev", "--", "-H", "0.0.0.0", "-p", "8081"]
