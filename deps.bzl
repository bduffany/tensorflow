load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tensorflow_cgo_deps():
    http_archive(
        name = "libtensorflow-cpu-linux-x86_64-2.9.0",
        sha256 = "a81188b91a1df911a6d69fcfd55529abad893e2da0ddcc51ef3da5d5bd067d0c",
        urls = [
            "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-2.9.0.tar.gz",
        ],
        build_file_content = "exports_files([\"lib/libtensorflow.so\"])",
    )
