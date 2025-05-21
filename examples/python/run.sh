#!/bin/bash

# PDWFS_ROOT=/home/benjamin/projects/argo/data-pipeline/pdwfs/pdwfs-v0.2.1-linux-amd64
PDWFS_ROOT=/home/benjamin/projects/argo/data-pipeline/pdwfs/build
export PATH=$PDWFS_ROOT/bin:$PATH
export LD_LIBRARY_PATH=$PDWFS_ROOT/lib:$LD_LIBRARY_PATH

export PDWFS_REDIS=localhost:6379

pdwfs-local init
. ./pdwfs.session

# cd /tmp/job

export PDWFS_LOGS=1
export PDWFS_DUMPCONF=1
export PDWFS_CTRACES=1

# python3 /home/benjamin/projects/argo/data-pipeline/pdwfs/examples/python/writer.py
# python3 /home/benjamin/projects/argo/data-pipeline/pdwfs/examples/python/reader.py

pdwfs -p /tmp/job python3 /home/benjamin/projects/argo/data-pipeline/pdwfs/examples/python/writer.py
pdwfs -p /tmp/job python3 /home/benjamin/projects/argo/data-pipeline/pdwfs/examples/python/reader.py

pdwfs-local finalize
