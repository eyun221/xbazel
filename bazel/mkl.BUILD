package(default_visibility = ["//visibility:public"])

cc_library(
  name = "intel_mkl",
  srcs = [
    "lib64/libmkl_intel_lp64.a",
    "lib64/libmkl_sequential.a",
    "lib64/libmkl_core.a",
    "lib64/libiomp5.a",
  ],
  hdrs = glob(["include/*.h"]), 
  includes = [
    "include",
  ],
  visibility = ["//visibility:public"],
)

cc_library(
  name = "intel_mkl_hdrs",
  hdrs = glob(["include/*.h"]), 
  includes = [
    "include",
  ],
  visibility = ["//visibility:public"],
)
