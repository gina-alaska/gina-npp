PYTROLL_HOME=$HOME/apps/pytroll

if [ ! -d $PYTROLL_HOME ]; then
  echo "PYTROLL_HOME directory does not exist: $PYTROLL_HOME"
  echo "probably should fix that"
fi

#mpop needs the following set right
PYTHONPATH=$PYTHONPATH:$PYTROLL_HOME/lib/python2.7/site-packages
export PYTHONPATH
PPP_CONFIG_DIR=$PYTROLL_HOME/etc
export PPP_CONFIG_DIR
