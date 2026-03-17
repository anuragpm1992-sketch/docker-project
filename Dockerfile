FROM nginx:latest
WORKDIR /app
COPY . .
RUN nginx
EXPOSE 80
