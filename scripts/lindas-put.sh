#!/bin/sh
curl -n \
     -X PUT \
     -H Content-Type:application/n-triples \
     -T target/ubd28.nt \
     -G https://lindasprd.netrics.ch:8443/lindas \
     --data-urlencode graph=https://linked.opendata.swiss/graph/FOEN/UBD28
curl -n \
     -X PUT \
     -H Content-Type:application/n-triples \
     -T target/ubd66.nt \
     -G https://lindasprd.netrics.ch:8443/lindas \
     --data-urlencode graph=https://linked.opendata.swiss/graph/FOEN/UBD66