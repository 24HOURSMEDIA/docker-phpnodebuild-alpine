#!/usr/bin/env sh

PHP_VERSION=$(php -r "echo phpversion();")
NODE_VERSION=$(node -v)
NPM_VERSION=$(npm -v)
YARN_VERSION=$(yarn -v)
ME=$(whoami)

echo "
__
 _)|_||_  _    _____  _  _|o _  |_    o| _| _ __
/__  || |(_)|_||_>|||(/_(_||(_| |_)|_|||(_|(/_|


PHP: ${PHP_VERSION}     NODE: ${NODE_VERSION}     NPM: ${NPM_VERSION}     YARN: ${YARN_VERSION}
"

echo "user: ${ME} login on container ${HOSTNAME} to create a build"
echo ""
tail -F /dev/null