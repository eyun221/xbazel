cc_library(
    name = "gmock",
    srcs = glob(["src/*.cc"], exclude=["src/gmock_main.cc"]),
    hdrs = glob([
                "include/**/*.h",
                ]),
    deps = [
        "@gtest//:gtest",
    ],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
)

cc_library(
    name = "gmock_main",
    srcs = [
        "src/gmock_main.cc",
    ],
    deps = [
        ":gmock",
    ],
    visibility = ["//visibility:public"],
)

