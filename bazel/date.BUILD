cc_library(
    name="date",
    hdrs = [
        "include/date/date.h",
    ],
    includes = ["include/date"],
    strip_include_prefix ="include",
    visibility = ["//visibility:public"],
)

cc_library(
    name="tz",
    hdrs = [
        "include/date/tz.h",
        "include/date/tz_private.h",
    ],
    srcs = [
        "src/tz.cpp",
    ],
    deps = [
        ":date",
    ],
    defines = [
        "HAS_REMOTE_API=0",
    ],
    strip_include_prefix ="include",
    includes = ["date", "."],
    visibility = ["//visibility:public"],
)

cc_library(
    name="week",
    hdrs = [
        "include/date/iso_week.h",
    ],
    deps = [
        ":date",
    ],
    strip_include_prefix ="include",
    includes = ["date"],
    visibility = ["//visibility:public"],
)

cc_library(
    name="julian",
    hdrs = [
        "include/date/julian.h",
    ],
    deps = [
        ":date",
    ],
    includes = ["date"],
    strip_include_prefix ="include",
    visibility = ["//visibility:public"],
)

cc_library(
    name="islamic",
    hdrs = [
        "include/date/islamic.h",
    ],
    deps = [
        ":date",
    ],
    includes = ["date"],
    strip_include_prefix ="include",
    visibility = ["//visibility:public"],
)

cc_library(
    name="date_all",
    deps = [
        ":date",
        ":tz",
        ":week",
        ":julian",
        ":islamic",
    ],
    visibility = ["//visibility:public"],
)
