#!/bin/bash
docker run --rm \
    -e PDK_ROOT=$PDK_ROOT \
    -v $(pwd):$(pwd) \
    -v $OPENLANE_ROOT:$OPENLANE_ROOT \
    -v $PDK_ROOT:$PDK_ROOT \
    -u $(id -u $USER):$(id -g $USER) \
    efabless/openlane:a35b64aa200c91e9eb7dde56db787d6b4c0ea12a-amd64 \
    /bin/bash -c "cd $(pwd) ; sh verilog/gl/sta.sh | tee sta.log"
