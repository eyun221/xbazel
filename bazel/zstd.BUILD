cc_library(
    name = "zstd",
    srcs = glob(
        [
            "lib/*.h",
            "lib/common/*.h",
            "lib/common/*.c",
            "lib/compress/*.c",
            "lib/compress/*.h",
            "lib/decompress/*.c",
            "lib/decompress/*.h",
        ],
        exclude = [
            "lib/common/xxhash.c",
        ],
    ),
    hdrs = [
        "lib/zstd.h",
    ],
    defines = [
        "XXH_PRIVATE_API",
        "ZSTDLIB_VISIBILITY=",
        "ZSTDERRORLIB_VISIBILITY=",
    ],
    includes = [
        "lib",
        "lib/common",
    ],
    linkopts = [],
    textual_hdrs = [
        "lib/common/xxhash.c",
    ],
    visibility = ["//visibility:public"],
)
