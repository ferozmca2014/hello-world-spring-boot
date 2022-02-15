# Base Image
FROM thothbot/alpine-jre8

#working directory
WORKDIR /app

# Copy the files into the image
COPY . .

#Update the files and install maven
#RUN apt-get update && \
#    apt-get install -y maven

#Build Command
#RUN mvn clean install

#Exposing the port
EXPOSE 8080

#instruction to run the application
ENTRYPOINT ["java","-jar","/app/target/myproject-0.0.1-SNAPSHOT.jar"]
