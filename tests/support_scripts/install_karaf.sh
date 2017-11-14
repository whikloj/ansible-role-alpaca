#!/bin/sh

echo "Downloading Apache Karaf version: ${KARAF_VERSION}"
wget -q -O "$HOME/apache-karaf-${KARAF_VERSION}.tar.gz" "http://archive.apache.org/dist/karaf/$KARAF_VERSION/apache-karaf-${KARAF_VERSION}.tar.gz"
echo "done"

cd "$HOME"
echo "Extracting Karaf"
tar xf "$HOME/apache-karaf-${KARAF_VERSION}.tar.gz"
echo "done"
echo "Creating symlink for Karaf"
ln -s "$HOME/apache-karaf-$KARAF_VERSION" $KARAF_DIR
echo "done"

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
echo "Starting Karaf and waiting $KARAF_WAIT_SECS seconds"
$KARAF_DIR/bin/start
sleep $KARAF_WAIT_SECS
echo "done"
