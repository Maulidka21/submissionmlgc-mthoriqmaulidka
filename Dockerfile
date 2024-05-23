FROM node:20
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV PORT=3000
ENV MODEL_URL=https://storage.googleapis.com/submission_bangkit_serta-mulia/model.json
ENV GOOGLE_CLOUD_PROJECT=submissionmlgc-mthoriqmaulidka
EXPOSE 3000
CMD [ "npm", "run", "start" ]
