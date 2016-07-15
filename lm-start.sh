# make the directory structure for a light module
# this is basically the motivation for the later npm-cli stuff.

LMDIR="torino"

mkdir $LMDIR

# todo: loopify over array [components, includes, pages]
mkdir -p $LMDIR/dialogs/components 
#mkdir -p $LMDIR/dialogs/includes 
mkdir -p $LMDIR/dialogs/pages 

# todo: loopify over array [areas, components, includes, pages]
mkdir -p $LMDIR/templates/areas 
mkdir -p $LMDIR/templates/components 
#mkdir -p $LMDIR/templates/includes 
mkdir -p $LMDIR/templates/pages 

# todo: loopify over array [css, js]
mkdir -p $LMDIR/webresources/css
mkdir -p $LMDIR/webresources/js
