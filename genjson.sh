#java -agentlib:native-image-agent=experimental-class-loader-support,config-output-dir=./src/main/resources/META-INF/native-image2 -jar build/libs/cas.jar
./gradlew clean build --refresh-dependencies
java -agentlib:native-image-agent=config-merge-dir=./src/main/resources/META-INF/native-image/org/apereo/cas/overlay,config-write-period-secs=300,config-write-initial-delay-secs=15 -jar build/libs/cas.jar
