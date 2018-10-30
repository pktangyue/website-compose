path=`dirname $0`
for f in `find $path -name '*.conf.template'`; do
  envsubst '$DOMAIN' < $f > ${f%.*}
done
env
