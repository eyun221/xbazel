"""Load dependencies needed to compile and test the grpc library as a 3rd-party consumer."""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository","new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def grpc_deps():
    """Loads dependencies need to compile and test the grpc library."""


    native.bind(
        name = "nanopb",
        actual = "@com_github_nanopb_nanopb//:nanopb",
    )

    native.bind(
        name = "upb_lib",
        actual = "@upb//:upb",
    )

    native.bind(
        name = "absl-base",
        actual = "@abseilcpp//absl/base",
    )

    native.bind(
        name = "absl-time",
        actual = "@abseilcpp//absl/time:time",
    )

    native.bind(
        name = "protobuf",
        actual = "@com_google_protobuf//:protobuf",
    )

    native.bind(
        name = "protobuf_clib",
        actual = "@com_google_protobuf//:protoc_lib",
    )
    
    
    native.bind(
        name = "grpc_cpp_plugin",
        actual = "@com_github_grpc_grpc//:grpc_cpp_plugin",
    )
    
    native.bind(
        name = "grpc_lib",
        actual = "@com_github_grpc_grpc//:grpc++",
    )
    native.bind(
        name = "protobuf_headers",
        actual = "@com_google_protobuf//:protobuf_headers",
    )
    
    native.bind(
        name = "crypto",
        actual = "@openssl//:crypto",
    )
    
    native.bind(
        name = "libssl",
        actual = "@openssl//:ssl",
    )

    native.bind(
        name = "protobuf",
        actual = "@com_google_protobuf//:protobuf",
    )

    native.bind(
        name = "protobuf_clib",
        actual = "@com_google_protobuf//:protoc_lib",
    )

    native.bind(
        name = "protobuf_headers",
        actual = "@com_google_protobuf//:protobuf_headers",
    )

    native.bind(
        name = "protocol_compiler",
        actual = "@com_google_protobuf//:protoc",
    )

    native.bind(
        name = "cares",
        actual = "@com_github_cares_cares//:ares",
    )

    native.bind(
        name = "gtest",
        actual = "@gtest//:gtest",
    )

    native.bind(
        name = "gmock",
        actual = "@gtest//:gmock",
    )

    native.bind(
        name = "benchmark",
        actual = "@com_github_google_benchmark//:benchmark",
    )


    native.bind(
        name = "grpc_cpp_plugin",
        actual = "@com_github_grpc_grpc//:grpc_cpp_plugin",
    )

    native.bind(
        name = "grpc++_codegen_proto",
        actual = "@com_github_grpc_grpc//:grpc++_codegen_proto",
    )

    native.bind(
        name = "opencensus-trace",
        actual = "@io_opencensus_cpp//opencensus/trace:trace",
    )

    native.bind(
        name = "opencensus-stats",
        actual = "@io_opencensus_cpp//opencensus/stats:stats",
    )

    native.bind(
        name = "opencensus-stats-test",
        actual = "@io_opencensus_cpp//opencensus/stats:test_utils",
    )

    git_repository(
        name = "upb",
        remote = "https://github.com/protocolbuffers/upb.git",
        commit = "cf35baa1",
    )
    
    
    new_git_repository(
        name = "com_github_nanopb_nanopb",
        remote = "https://github.com/nanopb/nanopb.git",
        #tag = "0.4.2",
        commit = "f8ac4637662816",
        build_file = "@xbazel//bazel:nanopb.BUILD",
    )
    
    
    git_repository(
        name = "io_opencensus_cpp",
        remote = "https://github.com/census-instrumentation/opencensus-cpp.git",
        tag = "v0.3.0",
    )

    new_git_repository(
        name = "com_github_cares_cares",
        remote = "https://github.com/c-ares/c-ares.git",
        tag = "cares-1_15_0",
        build_file = "@xbazel//bazel:cares.BUILD",
    )

    git_repository(
        name = "com_github_grpc_grpc",
        remote = "https://github.com/grpc/grpc.git",
        tag = "v1.21.2"
    )
