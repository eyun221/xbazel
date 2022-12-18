workspace(name = "xbazel")

load(
    "@bazel_tools//tools/build_defs/repo:git.bzl",
    "git_repository",
    "new_git_repository",
)


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

# org_boost_boost
git_repository(
    name = "boost",
    commit = "5d277ca0e165c4de02104bb976233cd6c6b7c75f",
    remote = "https://github.com/iceboy233/boost.git",
)

load("@boost//:boost_deps.bzl", "boost_deps")
boost_deps()


git_repository(
    name = "com_github_gflags_gflags",
    remote = "https://github.com/gflags/gflags.git",
    tag = "v2.2.2",
)

bind(
    name = "gflags",
    actual = "@com_github_gflags_gflags//:gflags",
)


git_repository(
    name = "com_github_google_glog",
    remote = "https://github.com/google/glog.git",
    tag = "v0.5.0",
)


git_repository(
    name = "com_google_googletest",
    remote = "https://github.com/google/googletest.git",
    tag = "release-1.11.0",
)


new_git_repository(
    name = "gmock",
    remote = "https://github.com/google/googlemock.git",
    tag = "release-1.7.0",
    build_file = "@brpc//:gmock.BUILD",
)



skylib_version = "0.8.0"
git_repository(
    name = "bazel_skylib",
    remote = "https://github.com/bazelbuild/bazel-skylib.git",
    tag = "0.8.0",
)

git_repository(
    name = "rules_cc",
    remote = "https://github.com/bazelbuild/rules_cc.git",
    commit = "608c7b6",
)


git_repository(
    name = "rules_foreign_cc",
    remote = "https://github.com/bazelbuild/rules_foreign_cc.git",
    tag = "0.5.1",
)
load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")
rules_foreign_cc_dependencies()

git_repository(
    name = "rules_protobuf",
    remote = "https://github.com/pubref/rules_protobuf.git",
    tag = "v0.8.2",
)



# remove -DHAVE_ZLIB
git_repository(
    name = "com_google_protobuf",
    remote = "https://github.com/protocolbuffers/protobuf.git",
    #build_file = "//bazel:protobuf.BUILD",
    tag = "v3.7.0",
)

new_git_repository(
    name = "com_github_google_leveldb",
    remote = "https://github.com/google/leveldb.git",
    build_file = "@brpc//:leveldb.BUILD",
    tag = "v1.20",
)


new_git_repository(
    name = "rocksdb",
    remote = "https://github.com/facebook/rocksdb.git",
    build_file = "//bazel:rocksdb.BUILD",
    tag = "v7.8.3",
)

#yum install openssl-devel
new_local_repository(
    name = "openssl",
    path = "/usr",
    build_file = "@brpc//:openssl.BUILD",
)

bind(
    name = "ssl",
    actual = "@openssl//:ssl"
)




#git_repository(
#    name = "boringssl",
#    remote = "https://github.com/google/boringssl.git",
#    #tag = "v1.0.0-bazel",
#   commit = "afc30d43eef92979b05776ec0963c9cede5fb80f"
#)
#bind(name = "ssl", actual = "@boringssl//:ssl")
#bind(name = "crypto", actual = "@boringssl//:crypto")


# yum install  zlib-devel
new_local_repository(
    name = "zlib_archive",
    build_file = "@brpc//:zlib.BUILD",
    path = "/usr",
)


#new_git_repository(
#    name = "zlib_archive",
#    remote = "https://github.com/madler/zlib.git",
#    tag = "v1.2.11",
#    build_file = "@brpc//:zlib.BUILD",
#)
bind(name = "zlib", actual = "@zlib_archive//:zlib")


load("//bazel:grpc.bzl", "grpc_deps")
grpc_deps()

git_repository(
    name = "brpc",
    remote = "https://github.com/apache/incubator-brpc.git",
    tag = "1.2.0",
    repo_mapping = {"@zlib": "@zlib_archive"},
)


new_git_repository(
    name = "jemalloc",
    remote = "https://github.com/jemalloc/jemalloc.git",
    build_file = "//bazel:jemalloc.BUILD",
    tag = "5.3.0",
)

git_repository(
    name = "com_google_absl",
    remote = "https://github.com/abseil/abseil-cpp.git",
    tag = "20210324.2",
)

new_git_repository(
    name = "robin-map",
    remote = "https://github.com/Tessil/robin-map.git",
    tag = "v1.0.1",
    build_file = "//bazel:robin-map.BUILD",
)


new_git_repository(
    name = "rapidjson",
    remote = "https://github.com/Tencent/rapidjson.git",
    tag = "v1.1.0",
    build_file = "//bazel:rapidjson.BUILD",
)


new_git_repository(
    name = "libcuckoo",
    remote = "https://github.com/efficient/libcuckoo.git",
    tag = "v0.3.1",
    build_file = "//bazel:libcuckoo.BUILD",
)

new_git_repository(
    name = "hiredis",
    remote = "https://github.com/redis/hiredis.git",
    tag = "v1.1.0",
    build_file = "//bazel:hiredis.BUILD",
)

new_git_repository(
    name = "snappy",
    remote = "https://github.com/google/snappy.git",
    tag = "1.1.9",
    build_file = "//bazel:snappy.BUILD",
)

new_git_repository(
    name = "gperftools",
    remote = "https://github.com/gperftools/gperftools.git",
    tag = "gperftools-2.10",
    build_file = "//bazel:gperftools.BUILD",
)



new_git_repository(
    name = "concurrentqueue",
    remote = "https://github.com/cameron314/concurrentqueue.git",
    tag = "v1.0.3",
    build_file = "//bazel:concurrentqueue.BUILD",
)


git_repository(
    name = "double-conversion",
    remote = "https://github.com/google/double-conversion.git",
    tag = "v3.2.1",
)

new_git_repository(
    name = "smhasher",
    remote = "https://github.com/aappleby/smhasher.git",
    commit = "61a0530",
    build_file = "//bazel:smhasher.BUILD",
)

new_git_repository(
    name = "xsimd",
    remote = "https://github.com/xtensor-stack/xsimd.git",
    tag = "10.0.0",
    build_file = "//bazel:xsimd.BUILD",
)

new_git_repository(
    name = "parallel_hashmap",
    remote = "https://github.com/greg7mdp/parallel-hashmap.git",
    tag = "1.37",
    build_file = "//bazel:phmap.BUILD",
)


new_git_repository(
    name = "hopscotch-map",
    remote = "https://github.com/Tessil/hopscotch-map.git",
    tag = "v2.3.0",
    build_file = "//bazel:hopscotch-map.BUILD",
)

new_git_repository(
    name = "flatbuffers",
    remote = "https://github.com/google/flatbuffers.git",
    tag = "v2.0.0",
    build_file = "//bazel:flatbuffers.BUILD",
)

new_git_repository(
    name = "tinyxml2",
    remote = "https://github.com/leethomason/tinyxml2.git",
    tag = "9.0.0",
    build_file = "//bazel:tinyxml2.BUILD",
)

new_git_repository(
    name = "json",
    remote = "https://github.com/nlohmann/json.git",
    tag = "v3.11.2",
    build_file = "//bazel:json.BUILD",
)

new_git_repository(
    name = "librdkafka",
    remote = "https://github.com/confluentinc/librdkafka.git",
    tag = "v1.0.0",
    build_file = "//bazel:librdkafka.BUILD",
    repo_mapping = {"@zlib": "@zlib_archive"},
)

new_git_repository(
    name = "zookeeper",
    remote = "https://github.com/apache/zookeeper.git",
    tag = "release-3.4.13",
    build_file = "//bazel:zookeeper.BUILD",
)




new_git_repository(
    name = "xxhash",
    remote = "https://github.com/Cyan4973/xxHash.git",
    tag = "v0.8.1",
    build_file = "//bazel:xxhash.BUILD",
)


new_git_repository(
    name = "libevent",
    remote = "https://github.com/libevent/libevent.git",
    tag = "release-2.1.12-stable",
    build_file = "//bazel:libevent.BUILD",
)



new_git_repository(
    name = "lz4",
    remote = "https://github.com/lz4/lz4.git",
    tag = "v1.9.4",
    build_file = "//bazel:lz4.BUILD",
)


new_git_repository(
    name = "cpprest",
    remote = "https://github.com/microsoft/cpprestsdk.git",
    tag = "v2.10.18",
    build_file = "//bazel:cpprest.BUILD",
)


new_git_repository(
    name = "disruptor",
    remote = "https://github.com/fsaintjacques/disruptor--.git",
    branch = "master",
    build_file = "//bazel:disruptor.BUILD",
)


new_git_repository(
    name = "breakpad",
    remote = "https://github.com/google/breakpad.git",
    branch = "master",
    build_file = "//bazel:breakpad.BUILD",
)



new_git_repository(
    name = "sparsehash",
    remote = "https://github.com/sparsehash/sparsehash.git",
    tag = "sparsehash-2.0.4",
    build_file = "//bazel:sparsehash.BUILD",
)


new_git_repository(
    name = "thrift",
    remote = "https://github.com/apache/thrift.git",
    tag = "0.9.3.1",
    build_file = "//bazel:thrift.BUILD",
)

git_repository(
    name = "tbb",
    remote = "https://github.com/oneapi-src/oneTBB.git",
    tag = "v2021.5.0"
)


new_git_repository(
    name = "taskflow",
    remote = "https://github.com/taskflow/taskflow.git",
    tag = "v3.4.0",
    build_file = "//bazel:taskflow.BUILD",
)

new_git_repository(
    name = "date",
    remote = "https://github.com/HowardHinnant/date.git",
    tag = "v3.0.1",
    build_file = "//bazel:date.BUILD",
)

new_git_repository(
    name = "scheduler",
    remote = "https://github.com/Bosma/Scheduler.git",
    branch = "master",
    build_file = "//bazel:scheduler.BUILD",
)


new_git_repository(
    name = "CTPL",
    remote = "https://github.com/vit-vit/CTPL.git",
    branch = "master",
    build_file = "//bazel:CTPL.BUILD",
)

