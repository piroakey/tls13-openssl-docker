#!/bin/bash

CMD="openssl s_client -connect remote.ubuntu:443 -tls1_2 -quiet -no_ign_eof -CAfile ca.pem -sess_in sess < /dev/null > /dev/null 2>&1"

if [ $# -ne 1 ]
then
    echo "USAGE: ${0} [num of iterations]"
    exit -1
fi

./usec_perf "${CMD}" ${1}
