config_setting(
    name = "with_openssl",
    define_values = {
        "with_openssl": "false",
    },
    visibility = ["//visibility:public"],
)

config_setting(
    name = "with_sys_zlib",
    define_values = {
        "with_sys_zlib": "false",
    },
    visibility = ["//visibility:public"],
)

cc_library(
    name = "websocketpp",
    hdrs = glob(["Release/libs/websocketpp/**/*.hpp"]),
    deps = [
        "@boost//:asio",
        "@boost//:thread",
    ],
)

cc_library(
    name = "cpprest",
    srcs = [
        "Release/src/http/client/http_client.cpp",
        "Release/src/http/client/http_client_asio.cpp",
        "Release/src/http/client/http_client_impl.h",
        "Release/src/http/client/http_client_msg.cpp",
        "Release/src/http/client/x509_cert_utilities.cpp",
        "Release/src/http/common/http_helpers.cpp",
        "Release/src/http/common/http_msg.cpp",
        "Release/src/http/common/internal_http_helpers.h",
        "Release/src/http/common/x509_cert_utilities.h",
        "Release/src/http/listener/http_listener.cpp",
        "Release/src/http/listener/http_listener_msg.cpp",
        "Release/src/http/listener/http_server_api.cpp",
        "Release/src/http/listener/http_server_asio.cpp",
        "Release/src/http/listener/http_server_impl.h",
        "Release/src/http/oauth/oauth1.cpp",
        "Release/src/http/oauth/oauth2.cpp",
        "Release/src/json/json.cpp",
        "Release/src/json/json_parsing.cpp",
        "Release/src/json/json_serialization.cpp",
        "Release/src/pch/stdafx.h",
        "Release/src/pplx/pplx.cpp",
        "Release/src/pplx/pplxlinux.cpp",
        "Release/src/pplx/threadpool.cpp",
        "Release/src/streams/fileio_posix.cpp",
        "Release/src/uri/uri.cpp",
        "Release/src/uri/uri_builder.cpp",
        "Release/src/utilities/asyncrt_utils.cpp",
        "Release/src/utilities/base64.cpp",
        "Release/src/utilities/web_utilities.cpp",
        "Release/src/websockets/client/ws_client.cpp",
        "Release/src/websockets/client/ws_client_impl.h",
        "Release/src/websockets/client/ws_client_wspp.cpp",
        "Release/src/websockets/client/ws_msg.cpp",
    ],
    hdrs = glob([
        "Release/include/**/*",
    ]),
    copts = [
        "-std=c++11",
        "-fno-strict-aliasing",
        "-pedantic",
        "-Wall",
        "-Wextra",
        "-Wunused-parameter",
        "-Wcast-align",
        "-Wcast-qual",
        "-Wformat=2",
        "-Winit-self",
        "-Winvalid-pch",
        "-Wmissing-format-attribute",
        "-Wpacked",
        "-Wredundant-decls",
        "-Wunreachable-code",
    ],
    defines = [
        "CPPREST_FORCE_HTTP_CLIENT_ASIO",
        "CPPREST_FORCE_HTTP_LISTENER_ASIO",
        "cpprest_EXPORTS",
        "BOOST_THREAD_BUILD_LIB=1",
        "BOOST_THREAD_PLATFORM_PTHREAD",
        "BOOST_THREAD_POSIX",
        "BOOST_THREAD_USES_CHRONO",
    ],
    includes = [
        "Release/include",
        "Release/libs/websocketpp",
        "Release/src/pch",
    ],
    linkopts = select({
        "with_openssl": ["-lssl"],
        "//conditions:default": [],
    }) + select({
        "with_sys_zlib": ["-lz"],
        "//conditions:default": [],
    }),
    visibility = ["//visibility:public"],
    deps = [
        ":websocketpp",
        "@boost//:asio",
        "@boost//:thread",
    ] + select({
        "with_openssl": [],
        "//conditions:default": ["//external:ssl"],
    }) + select({
        "with_sys_zlib": [],
        "//conditions:default": ["//external:zlib"],
    }),
)
