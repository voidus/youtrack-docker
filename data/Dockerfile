FROM dockerfile/java

RUN adduser youtrack --disabled-password --gecos ""

RUN mkdir -p /home/youtrack/data
RUN touch /home/youtrack/data/.keep

RUN chown -R youtrack: /home/youtrack/data

WORKDIR /home/youtrack

VOLUME /home/youtrack/data

CMD echo "Pure data container"
