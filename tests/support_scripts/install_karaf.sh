#!/bin/sh

wget -q -O "$HOME/apache-karaf-${KARAF_VERSION}.tar.gz" "http://archive.apache.org/dist/karaf/$KARAF_VERSION/apache-karaf-${KARAF_VERSION}.tar.gz"

cd "$HOME"
tar xf "$HOME/apache-karaf-${KARAF_VERSION}.tar.gz"
mv apache-karaf-"$KARAF_VERSION" /opt

ln -s "/opt/apache-karaf-$KARAF_VERSION" $KARAF_DIR

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
$KARAF_DIR/bin/start
sleep 60