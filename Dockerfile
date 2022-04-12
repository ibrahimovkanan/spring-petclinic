FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /farid
RUN apt update && apt install -y tcl && apt install default-jre -y && apt install git -y && apt-get install maven -y && \
git clone https://github.com/ibrahimovkanan/spring-petclinic.git && cd spring-petclinic && rm -f /src/main/resources/db/mysql/user.sql &&\
sed -i 's/localhost/${DATA_KANAN}/g' src/main/resources/application-mysql.properties && ./mvnw package && rm -rf target/
EXPOSE 8080:8080
CMD cd spring-petclinic && mvn spring-boot:run -Dspring-boot.run.profiles=mysql