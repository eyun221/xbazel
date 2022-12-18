package(default_visibility = ["//visibility:public"])

cc_library(
    name="smhasher",
    srcs = glob(["src/*.cpp","src/*.h"], exclude = ["src/*Test.*", "src/main.cpp"]),
    hdrs = glob(["src/*.h"], exclude = ["src/*Test.h"]),
    strip_include_prefix ="src",
    visibility = ["//visibility:public"],
)