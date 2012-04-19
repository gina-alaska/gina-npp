PYTROLL_HOME=$HOME/apps/pytroll

if [ ! -d $PYTROLL_HOME ]; then
  echo "PYTROLL_HOME directory does not exist: $PYTROLL_HOME"
  echo "probably should fix that"
fi

#mpop needs the following set right
PYTHONPATH=$PYTHONPATH:$PYTROLL_HOME/lib/python2.7/site-packages
export PYTHONPATH

if [ ! -d $PYTROLL_HOME/lib/python2.7/site-packages ]; then
  echo "you need to make the following dir:"
  echo "mkdir -p $PYTROLL_HOME/lib/python2.7/site-packages"
fi

PPP_CONFIG_DIR=$PYTROLL_HOME/etc

if [ ! -d $PPP_CONFIG_DIR ]; then
  echo "PPP_CONFIG_DIR does not exist: $PPP_CONFIG_DIR"
  echo "sanity check you've run the install.sh tool"
fi

export PPP_CONFIG_DIR
