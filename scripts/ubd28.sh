#!/bin/sh
rm target/ubd28.nt
java -jar ./lib/RMLMapper-0.1.jar -M config/ubd28.ttl -O target/ubd28.nt
perl -pi.back -e 's/(\/canton\/)([A-Z]{2})/\1\L\2/' target/ubd28.nt
