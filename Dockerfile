# pull a base image which gives all the required tools and libraries
FROM openjdk:17-jdk-alpine

# create the folder where the app code will be stored
WORKDIR /app

# Copy the source code from the HOST to Container
COPY . .

RUN ls -R /app

# Compile the application code
RUN javac src/Main.java

RUN ls -R /app


# Run the application this can be overwritten
#CMD ["java", "app/src/Main"]
CMD ["java", "-cp", "src", "Main"]


