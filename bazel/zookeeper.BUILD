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
    srcs = glob(["zookeeper-client/zookeeper-client-c/src/*.c"]),
    hdrs = glob(["zookeeper-client/zookeeper-client-c/include/*.h"]),
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
