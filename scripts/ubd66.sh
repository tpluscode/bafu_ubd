#!/bin/sh
rm target/ubd66.nt
java -Djava.util.logging.config.file=config/log-config -jar ./lib/RMLMapper-0.1.jar -M config/ubd66.ttl -O target/ubd66.nt 2>&1 | grep -v DEBUG
serdi -i turtle -o ntriples input/meta/ubd66/qb.ttl >> target/ubd66.nt
