#!/bin/bash

# go to directory of command
cd "$(dirname "$0")"

if [ ! -e "./record_android_trace" ]; then
    curl -O https://raw.githubusercontent.com/google/perfetto/master/tools/record_android_trace
fi

if [ ! -x "./record_android_trace" ]; then
    chmod u+x record_android_trace
fi

#./record_android_trace -c ./configs/memory-java-heap.cfg -o trace_file.perfetto-trace -t 10s -b 64mb \
# sched freq idle am wm gfx view binder_driver hal dalvik camera input res memory

./record_android_trace -o trace_file.perfetto-trace -t 10s -b 64mb \
 sched freq idle am wm gfx view binder_driver hal dalvik camera input res memory