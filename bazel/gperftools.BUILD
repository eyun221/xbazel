licenses(["notice"])

load("@rules_foreign_cc//foreign_cc:configure.bzl", "configure_make_variant")

filegroup(
    name = "all",
    srcs = glob(["**"]),
)


cc_library(
    name = "gperftools",
    visibility = ["//visibility:public"],
    deps = [":gperftools_preinstalled_make"],
)

configure_make_variant(
    name = "gperftools_preinstalled_make",
    autoreconf = True,
    configure_in_place = True,
    autoreconf_options = ["--install", "--force"],
    env = {},
    lib_source = ":all",
    out_static_libs = ["libtcmalloc.a","libprofiler.a"],
    toolchain = "@rules_foreign_cc//toolchains:preinstalled_make_toolchain",
)