#! /bin/bash

# Clone a repository and run a command
git clone -b $3 -- https://github.com/$1/$2.git $2
cd $2
${4:-mvn -T 1C -Dmaven.test.skip=true install -am}
cd ..
