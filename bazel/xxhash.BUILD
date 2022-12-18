cc_library(
    name="xxhash",
    hdrs = glob([
        "xxh3.h",
        "xxhash.h",
    ]),
    srcs = [
        "xxhash.c"
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name="xxhash_inline",
    hdrs = [
        "xxh3.h",
        "xxhash.h",
        "xxhash.c",
    ],
    defines = [
        "XXH_INLINE_ALL"
    ],
    visibility = ["//visibility:public"],
)
