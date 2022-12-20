package(default_visibility = ["//visibility:public"])


cc_binary(
    name = "test",
    srcs = ["main.cc"],
    defines = [
    ],
    linkopts = [
        "-lpthread",
        #"-lz",
    ],
    linkstatic = 1,
    deps = [
        "@boost//:thread",
        "@com_github_google_glog//:glog",
        "@com_github_gflags_gflags//:gflags",
        "@com_google_googletest//:gtest",

        # rocksdb conflicts with leveldb
        # "@rocksdb",

        "@brpc",
        "@jemalloc",
        "@robin-map",
        "@rapidjson",
        "@libcuckoo",
        "@hiredis",
        "@com_github_google_snappy//:snappy",
        "@concurrentqueue",

        # gperftools conflicts with jemalloc
        # "@gperftools",

        "@zookeeper//:zookeeper",

        "@double-conversion",
        "@smhasher",
        "@xsimd",
        "@zstd",
        "@base64",
        "@yaml-cpp",
        "@parallel_hashmap",
        "@flatbuffers",
        "@tinyxml2",
        "@json",
        #"@librdkafka//:rdkafka",
        "//external:grpc_cpp_plugin",
        "//external:grpc_lib",
        "@com_google_absl//absl/strings:strings"
    ],
)
