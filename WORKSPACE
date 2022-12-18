workspace(name = "xbazel")

load(
    "@bazel_tools//tools/build_defs/repo:git.bzl",
    "git_repository",
    "new_git_repository",
)


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

git_repository(
    name = "org_boost_boost",
    commit = "5d277ca0e165c4de02104bb976233cd6c6b7c75f",
    remote = "https://github.com/iceboy233/boost.git",
)

load("@org_boost_boost//:boost_deps.bzl", "boost_deps")
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
