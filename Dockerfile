FROM openjdk:17
ADD jarstaging/com/valaxy/demo-workshop/2.1.2/demo-workshop-2.1.2.jar ftrend.jar
ENTRYPOINT ["java", "-jar", "ftrend.jar"]