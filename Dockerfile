#Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:25-jdk
#set the working directory in the container
WORKDIR /app
#Copy the current directory contents into the container at /app
COPY . .
#compile the java program
RUN javac samplefile.java
#Command to run the program
CMD ["java", "Docker.samplefile"]
