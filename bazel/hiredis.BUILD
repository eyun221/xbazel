cc_library(
    name = "hiredis",
    srcs = [
        "async.c",
        "hiredis.c",
        "net.c",
        "read.c",
        "sds.c",
    ],
    hdrs = ["dict.c"] + glob(["*.h"]) + glob(["adapters/*.h"]),
    copts = [
        "-Wno-unused-function",
        "-Wall",
        "-Wstrict-prototypes",
        "-Wwrite-strings",
    ],
    linkopts = [
        "-ldl",
        "-lnsl",
    ],
    visibility = ["//visibility:public"],
)
