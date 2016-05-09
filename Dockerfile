FROM java:7
COPY . .
RUN javac src/com/boeing/java/JavaHelloWorld.java

CMD ["java", "com.boeing.java.JavaHelloWorld"]
