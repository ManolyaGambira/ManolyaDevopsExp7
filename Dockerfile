#Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim
#set the working directory in the container
WORKDIR /app
#Copy the current directory contents into the container at /app
COPY . .
#compile the java program
RUN javac samplefile.java
#Command to run the program
CMD ["java", "samplefile"]
