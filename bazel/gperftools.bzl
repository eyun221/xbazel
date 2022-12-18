def gperftools_library():
    AM_CXXFLAGS = [
        "-DHAVE_CONFIG_H",
        "-Wall",
        "-Wwrite-strings",
        # "-Woverloaded-virtual",
        "-Wno-sign-compare",
        "-Wno-unused-result",
        "-fno-builtin-malloc",
        "-fno-builtin-free",
        "-fno-builtin-realloc",
        "-fno-builtin-calloc",
        "-fno-builtin-cfree",
        "-fno-builtin-memalign",
        "-fno-builtin-posix_memalign",
        "-fno-builtin-valloc",
        "-fno-builtin-pvalloc",
        "-fno-omit-frame-pointer",
    ]

    native.cc_library(
        name = "fake_stacktrace_scope",
        includes = ["src"],
        srcs = [
            "src/fake_stacktrace_scope.cc",
        ],
        copts = AM_CXXFLAGS,
        deps = [
            ":config_header",
        ],
        alwayslink = 1,
    )

    native.cc_library(
        name = "maybe_threads",
        includes = ["src"],
        srcs = [
            "src/maybe_threads.cc",
        ],
        hdrs = [
            "src/maybe_threads.h",
        ],
        copts = AM_CXXFLAGS,
        deps = [
            ":config_header",
            ":logging",
        ],
    )

    native.cc_library(
        name = "stacktrace",
        includes = ["src"],
        srcs = [
            "src/base/elf_mem_image.cc",
            "src/base/elf_mem_image.h",
            "src/base/vdso_support.cc",
            "src/base/vdso_support.h",
            "src/stacktrace.cc",
            "src/stacktrace_arm-inl.h",
            "src/stacktrace_generic-inl.h",
            "src/stacktrace_impl_setup-inl.h",
            "src/stacktrace_instrument-inl.h",
            "src/stacktrace_libgcc-inl.h",
            "src/stacktrace_libunwind-inl.h",
            "src/stacktrace_powerpc-darwin-inl.h",
            "src/stacktrace_powerpc-inl.h",
            "src/stacktrace_powerpc-linux-inl.h",
            "src/stacktrace_win32-inl.h",
            "src/stacktrace_x86-inl.h",
        ],
        hdrs = [
            "src/gperftools/stacktrace.h",
        ],
        copts = AM_CXXFLAGS,
        deps = [
            ":spinlock",
        ],
    )

    # Config header plus some internal headers.
    native.cc_library(
        name = "config_header",
        includes = ["src"],
        hdrs = [
            "src/base/basictypes.h",
            "src/base/commandlineflags.h",
            "src/config.h",
            "src/getenv_safe.h",
            "src/third_party/valgrind.h",
        ],
    )

    native.cc_library(
        name = "logging",
        includes = ["src"],
        srcs = [
            "src/addressmap-inl.h",
            "src/base/dynamic_annotations.c",
            "src/base/logging.cc",
        ],
        hdrs = [
            "src/base/dynamic_annotations.h",
            "src/base/logging.h",
        ],
        copts = AM_CXXFLAGS,
        deps = [
            ":config_header",
        ],
    )

    native.cc_library(
        name = "sysinfo",
        includes = ["src"],
        srcs = [
            "src/base/arm_instruction_set_select.h",
            "src/base/sysinfo.cc",
        ],
        hdrs = [
            "src/base/basictypes.h",
            "src/base/sysinfo.h",
        ],
        copts = AM_CXXFLAGS,
        deps = [
            ":config_header",
            ":logging",
        ],
    )

    native.cc_library(
        name = "spinlock",
        includes = ["src"],
        srcs = [
            "src/base/atomicops-internals-x86.cc",
            "src/base/spinlock.cc",
            "src/base/spinlock_internal.cc",
        ],
        hdrs = [
            "src/base/atomicops.h",
            "src/base/atomicops-internals-arm-generic.h",
            "src/base/atomicops-internals-arm-v6plus.h",
            "src/base/atomicops-internals-gcc.h",
            "src/base/atomicops-internals-linuxppc.h",
            "src/base/atomicops-internals-macosx.h",
            "src/base/atomicops-internals-mips.h",
            "src/base/atomicops-internals-windows.h",
            "src/base/atomicops-internals-x86.h",
            "src/base/googleinit.h",
            "src/base/linux_syscall_support.h",
            "src/base/spinlock.h",
            "src/base/spinlock_internal.h",
            "src/base/spinlock_linux-inl.h",
            "src/base/spinlock_posix-inl.h",
            "src/base/spinlock_win32-inl.h",
            "src/base/thread_annotations.h",
        ],
        copts = AM_CXXFLAGS,
        deps = [
            ":logging",
            ":sysinfo",
        ],
    )

    TCMALLOC_CFLAGS = [
        "-pthread",
        "-DNDEBUG",
        # Certain tests require exception, so we didn't disable exception
        # completely.
        # "-fno-exceptions",
    ] + AM_CXXFLAGS

    native.cc_library(
        name = "profiler",
        includes = ["src"],
        srcs = [
            "src/getpc.h",
            "src/profile-handler.cc",
            "src/profile-handler.h",
            "src/profiledata.cc",
            "src/profiledata.h",
            "src/profiler.cc",
        ],
        copts = TCMALLOC_CFLAGS,
        hdrs = [
            "src/gperftools/profiler.h",
        ],
        visibility = ["//visibility:public"],
        deps = [
            ":fake_stacktrace_scope",
            ":maybe_threads",
            ":stacktrace",
        ],
    )

    # thread-caching malloc
    native.cc_library(
        name = "tcmalloc",
        includes = ["src"],
        srcs = [
            "src/base/elfcore.h",
            "src/base/linuxthreads.cc",
            "src/base/linuxthreads.h",
            "src/base/low_level_alloc.cc",
            "src/base/low_level_alloc.h",
            "src/base/stl_allocator.h",
            "src/base/thread_annotations.h",
            "src/base/thread_lister.c",
            "src/base/thread_lister.h",
            "src/central_freelist.cc",
            "src/central_freelist.h",
            "src/common.cc",
            "src/common.h",
            "src/heap-checker.cc",
            "src/heap-checker-bcad.cc",
            "src/heap-profile-stats.h",
            "src/heap-profile-table.cc",
            "src/heap-profile-table.h",
            "src/heap-profiler.cc",
            "src/internal_logging.cc",
            "src/internal_logging.h",
            "src/libc_override.h",
            "src/libc_override_gcc_and_weak.h",
            "src/libc_override_glibc.h",
            "src/libc_override_osx.h",
            "src/libc_override_redefine.h",
            "src/linked_list.h",
            "src/malloc_extension.cc",
            "src/malloc_hook.cc",
            "src/malloc_hook-inl.h",
            "src/malloc_hook_mmap_linux.h",
            "src/maybe_emergency_malloc.h",
            "src/memfs_malloc.cc",
            "src/memory_region_map.cc",
            "src/memory_region_map.h",
            "src/packed-cache-inl.h",
            "src/page_heap.cc",
            "src/page_heap.h",
            "src/page_heap_allocator.h",
            "src/pagemap.h",
            "src/raw_printer.cc",
            "src/raw_printer.h",
            "src/sampler.cc",
            "src/sampler.h",
            "src/span.cc",
            "src/span.h",
            "src/stack_trace_table.cc",
            "src/stack_trace_table.h",
            "src/static_vars.cc",
            "src/static_vars.h",
            "src/symbolize.cc",
            "src/symbolize.h",
            "src/system-alloc.cc",
            "src/system-alloc.h",
            "src/tcmalloc.cc",
            "src/tcmalloc_guard.h",
            "src/thread_cache.cc",
            "src/thread_cache.h",
        ],
        hdrs = [
            "src/gperftools/heap-checker.h",
            "src/gperftools/heap-profiler.h",
            "src/gperftools/malloc_extension.h",
            "src/gperftools/malloc_extension_c.h",
            "src/gperftools/malloc_hook.h",
            "src/gperftools/malloc_hook_c.h",
            "src/gperftools/nallocx.h",
            "src/gperftools/tcmalloc.h",
        ],
        copts = TCMALLOC_CFLAGS,
        linkopts = [
            "-lm",
            "-pthread",
        ],
        visibility = ["//visibility:public"],
        deps = [
            ":config_header",
            ":fake_stacktrace_scope",
            ":maybe_threads",
            ":stacktrace",
        ],
        alwayslink = 1,
    )
