#!/bin/sh
rm output/ubd28.nt
java -jar ./lib/RMLMapper-0.1.jar -M config/ubd28.ttl -O output/ubd28.nt
perl -pi.back -e 's/(\/canton\/)([A-Z]{2})/\1\L\2/' output/ubd28.nt
