FROM dockerfile/java

RUN adduser youtrack --disabled-password --gecos ""

USER youtrack
WORKDIR /home/youtrack

RUN wget -nv http://download.jetbrains.com/charisma/youtrack-5.1.jar

CMD ["java", "-Duser.home=/home/youtrack/data", "-XX:MaxPermSize=150m", "-Xmx256m", "-jar", "youtrack-5.1.jar", "8000"]
