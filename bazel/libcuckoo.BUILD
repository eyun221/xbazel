cc_library(
    name = "libcuckoo",
    hdrs = glob([
        "libcuckoo/*.hh",
    ]),
    srcs = glob([
         "libcuckoo/*.hh",
    ]),
    linkopts = [
        "-pthread",
    ],
    visibility = ["//visibility:public"],
)

cc_binary(
name = "example",
    srcs = glob(["examples/hellohash.cc"]),
    deps = [
        "libcuckoo",
    ],
)
