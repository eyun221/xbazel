#!/bin/sh

set -e

bazel build -s --define=with_glog=true --define=grpc_no_ares=true --loading_phase_threads=1 ...

./bazel-bin/test --minloglevel=0 --logtostderr=true
