FROM openjdk:alpine
RUN mkdir /mydata
ADD target/BankingMicroservice-1.0-SNAPSHOT.jar /mydata/BankingMicroservice-1.0-SNAPSHOT.jar
CMD java -cp /mydata/BankingMicroservice-1.0-SNAPSHOT.jar com.aditi.App
