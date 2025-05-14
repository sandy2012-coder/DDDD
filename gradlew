#!/bin/sh
JAVA_CMD="${JAVA_HOME:-$(dirname $(dirname $(readlink -f $(which javac))))}/bin/java"
[ ! -x "$JAVA_CMD" ] && echo "Java not found!" && exit 1
CLASSPATH="gradle/wrapper/gradle-wrapper.jar"
exec "$JAVA_CMD" -cp "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
