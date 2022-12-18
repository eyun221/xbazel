licenses(["notice"])

cc_library(
    name = "hashtable",
    srcs = glob(["zookeeper-client/zookeeper-client-c/src/hashtable/**/*.c"]),
    hdrs = glob(["zookeeper-client/zookeeper-client-c/src/hashtable/**/*.h"]),
    copts = [
        "-Wall",
        "-Werror",
        "-Wdeclaration-after-statement",
    ],
    defines = [
        "_GNU_SOURCE",
        "HAVE_CONFIG_H",
    ],
    includes = ["zookeeper-client/zookeeper-client-c/src/hashtable"],
)

cc_library(
    name = "zookeeper",
    srcs = [
        "zookeeper-client/zookeeper-client-c/src/addrvec.c",
        "zookeeper-client/zookeeper-client-c/src/addrvec.h",
        "zookeeper-client/zookeeper-client-c/src/config.h",
        "zookeeper-client/zookeeper-client-c/src/generated/zookeeper.jute.c",
        "zookeeper-client/zookeeper-client-c/src/generated/zookeeper.jute.h",
        "zookeeper-client/zookeeper-client-c/src/mt_adaptor.c",
        "zookeeper-client/zookeeper-client-c/src/recordio.c",
        "zookeeper-client/zookeeper-client-c/src/zk_adaptor.h",
        "zookeeper-client/zookeeper-client-c/src/zk_hashtable.c",
        "zookeeper-client/zookeeper-client-c/src/zk_hashtable.h",
        "zookeeper-client/zookeeper-client-c/src/zk_log.c",
        "zookeeper-client/zookeeper-client-c/src/zookeeper.c",
    ],
    hdrs = [
        "zookeeper-client/zookeeper-client-c/include/proto.h",
        "zookeeper-client/zookeeper-client-c/include/recordio.h",
        "zookeeper-client/zookeeper-client-c/include/zookeeper.h",
        "zookeeper-client/zookeeper-client-c/include/zookeeper_log.h",
        "zookeeper-client/zookeeper-client-c/include/zookeeper_version.h",
    ],
    copts = [
        "-Wall",
        "-Wno-unused-function",
    ],
    defines = [
        "_GNU_SOURCE",
        "HAVE_CONFIG_H",
        "THREADED",
    ],
    includes = [
        "zookeeper-client/zookeeper-client-c/include",
        "zookeeper-client/zookeeper-client-c/src",
        "zookeeper-client/zookeeper-client-c/src/generated",
    ],
    strip_include_prefix = "zookeeper-client/zookeeper-client-c/include",
    linkopts = [
        "-lm",
        "-lrt",
        "-lpthread",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":hashtable",
    ],
    alwayslink = 1,
)
