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
	"@org_boost_boost//:thread",
	"@com_github_google_glog//:glog",
        "@com_github_gflags_gflags//:gflags",
    ],
)
