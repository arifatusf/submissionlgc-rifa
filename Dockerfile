FROM node:20
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV APP_ENV=production
ENV APP_PORT=8080
ENV MODEL_URL="https://storage.googleapis.com/mlgc-bucket-rifa/model-in-prod/model.json"
ENV PROJECT_ID="submissionmlgc-arifa"

CMD [ "npm", "start" ]

EXPOSE 8080
