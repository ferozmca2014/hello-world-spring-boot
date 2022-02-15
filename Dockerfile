# Base Image
FROM thothbot/alpine-jre8

#working directory
WORKDIR /app

# Copy the files into the image
COPY . .

#Exposing the port
EXPOSE 8080

#instruction to run the application
ENTRYPOINT ["java","-jar","/app/target/myproject-0.0.1-SNAPSHOT.jar"]
