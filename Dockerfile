FROM openjdk:18-slim-buster
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app


LABEL org.opencontainers.image.source=https://github.com/metaheed/kolle
LABEL org.opencontainers.image.description="Kolle container image"
LABEL org.opencontainers.image.licenses=MIT

#COPY kolle.jar kolle.jar


#ENV PORT=3000

# java -cp app.jar clojure.main -m io.metarx.kolle.boot

ENTRYPOINT ["java", "-jar", "kolle.jar" ]

##docker build  -t metaheed/kolle:latest --file Dockerfile .
##docker run -it --name metaheed/kolle:latest --rm  -p 3000:3000
