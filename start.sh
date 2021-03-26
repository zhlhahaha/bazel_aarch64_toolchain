#!/bin/bash -x
docker run -it -v $(pwd):/workground -w /workground zhlhahaha/builder:30-5.8.4-x86_64 /bin/bash
