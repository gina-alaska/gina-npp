#git submodule init 
#git submodule update
# clone the svn
if [ !-d $PYTROLL_HOME ]; then
  echo "hrrm.. PYTROLL_HOME does not exist"
  echo "mkdir $PYTROLL_HOME"
  exit 1
fi

if [ !-d $PPP_CONFIG_DIR ]; then
  mkdir $PPP_CONFIG_DIR 
fi

cd mpop
python setup.py install --prefix=$PYTROLL_HOME
cp -i etc/* $PPP_CONFIG_DIR

cd ..
cd mipp
python setup.py install --prefix=$PYTROLL_HOME
cd ..

cd pyresample
python setup.py install --prefix=$PYTROLL_HOME
cd ..
