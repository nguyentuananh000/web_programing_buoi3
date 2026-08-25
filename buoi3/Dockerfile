# Stage 1: Build source code bằng Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Chạy trên Tomcat 9
FROM tomcat:9.0-jdk17-temurin
# Xóa các webapp mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Đặt buoi3.war thành ROOT.war để website chạy ngay tại URL chính (/)
COPY --from=build /app/target/buoi3.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
