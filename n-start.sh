# get and build npm-build-tools:
git clone https://git.magnolia-cms.com/scm/build/npm-build-tools.git
cd npm-build-tools 
npm pack

cd ../

# get and build npm-cli:
git clone https://git.magnolia-cms.com/scm/build/npm-cli.git
cd npm-cli
npm install ../npm-build-tools/magnolia-magnolia-build-0.5.1-snapshot.tgz --save
#sudo npm install -g
npm install

#source /usr/local/lib/node_modules/@magnolia/cli/extra/mgnl-autocompletion.sh

cd ../

# get command completion for npm-cli:
source npm-cli/extra/mgnl-autocompletion.sh

# i don't know why, but ...
#unalias mgnl
chmod -R 755 npm-cli/bin/*
alias mgnl='./npm-cli/bin/mgnl.js'

# make a light module structure:
mgnl create-light-module lmONE

# add a page:
cd lmONE
../npm-cli/bin/mgnl.js create-page ONEONE

# add a component to an area:
../npm-cli/bin/mgnl.js create-component ONETEXT --available ONEONE@main

