# How

[linux or mac]

```shell
curl -O https://raw.githubusercontent.com/google/perfetto/master/tools/record_android_trace
chmod u+x record_android_trace
./record_android_trace -o trace_file.perfetto-trace -t 10s -b 64mb \
 sched freq idle am wm gfx view binder_driver hal dalvik camera input res memory
```

```shell
# 带上配置文件 config.pbtx
curl -O https://raw.githubusercontent.com/google/perfetto/master/tools/record_android_trace
chmod u+x record_android_trace
./record_android_trace -c config.pbtx -o trace_file.perfetto-trace -t 10s -b 64mb \
 sched freq idle am wm gfx view binder_driver hal dalvik camera input res memory
```

[windows]

```shell
curl -O https://raw.githubusercontent.com/google/perfetto/master/tools/record_android_trace
python3 record_android_trace -o trace_file.perfetto-trace -t 10s -b 64mb \
sched freq idle am wm gfx view binder_driver hal dalvik camera input res memory
```

## configs

[官方配置]
https://cs.android.com/android/platform/superproject/main/+/main:external/perfetto/test/configs/

[自定义配置]
https://ui.perfetto.dev/#!/record


## trace processor

```shell
curl -LO https://get.perfetto.dev/trace_processor
chmod +x ./trace_processor
trace_processor --httpd /path/to/trace.pftrace
# Reload the UI, it will prompt to use the HTTP+RPC interface
```