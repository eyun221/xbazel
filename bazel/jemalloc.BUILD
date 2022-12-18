load("@rules_foreign_cc//foreign_cc:configure.bzl", "configure_make_variant")

filegroup(
    name = "all",
    srcs = glob(["**"]),
)

# Wrap the cmake-built jemalloc code in a cc_library which can then be passed
# to a bazel cc_binary or cc_target `malloc` attribute.
# TODO(https://github.com/bazelbuild/rules_foreign_cc/issues/227): Remove this
# wrapper when bazel allows any target to be pasesd to `malloc`.
cc_library(
    # The `configure_make_variant` wrapper around `configure_make` doesn't
    # pass the 'visibility' setting correctly; it gets lost. As a
    # workaround we wrap the target to give the correct visibility setting.
    # TODO(xander): File an issue on `rules_foreign_cc` to preserve visibility.
    name = "jemalloc",
    visibility = ["//visibility:public"],
    deps = [":jemalloc_preinstalled_make"],
)

configure_make_variant(
    name = "jemalloc_preinstalled_make",
    autoconf = True,
    configure_in_place = True,
    env = select({
        # Without this option on macOS we will have the following issue:
        # .../libtool: no output file specified (specify with -o output).
        "@bazel_tools//src/conditions:darwin": {"AR": ""},
        "//conditions:default": {},
    }),
    lib_source = ":all",
    out_static_libs = select({
        "@bazel_tools//src/conditions:windows": [
            "libjemalloc_a.lib",
        ],
        "//conditions:default": ["libjemalloc.a"],
    }),
    # We need to use the system-default make; the version of make packaged
    # with `rules_foreign_cc` (4.3) segfaults on GitHub's Actions workers.
    # The version that is pre-installed on those workers (3.81) works fine.
    toolchain = "@rules_foreign_cc//toolchains:preinstalled_make_toolchain",
)