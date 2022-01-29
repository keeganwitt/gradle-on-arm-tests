FROM gradle:7.3.3-jdk17

COPY --chown=gradle:gradle test-project /home/gradle/app

WORKDIR /home/gradle/app

RUN gradle build --no-daemon
