savedcmd_hello.mod.o := gcc -Wp,-MMD,./.hello.mod.o.d -nostdinc -I/home/minsepar/linux/arch/x86/include -I/home/minsepar/linux/arch/x86/include/generated -I/home/minsepar/linux/include -I/home/minsepar/linux/include -I/home/minsepar/linux/arch/x86/include/uapi -I/home/minsepar/linux/arch/x86/include/generated/uapi -I/home/minsepar/linux/include/uapi -I/home/minsepar/linux/include/generated/uapi -include /home/minsepar/linux/include/linux/compiler-version.h -include /home/minsepar/linux/include/linux/kconfig.h -include /home/minsepar/linux/include/linux/compiler_types.h -D__KERNEL__ -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -march=x86-64 -mtune=generic -mno-red-zone -mcmodel=kernel -mstack-protector-guard-reg=gs -mstack-protector-guard-symbol=__ref_stack_chk_guard -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fno-jump-tables -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -fomit-frame-pointer -ftrivial-auto-var-init=zero -fzero-init-padding-bits=all -fno-stack-clash-protection -fmin-function-alignment=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -fconserve-stack -fno-builtin-wcslen -Wall -Wextra -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=2048 -Wno-main -Wno-dangling-pointer -Wvla -Wno-pointer-sign -Wcast-function-type -Wno-unterminated-string-initialization -Wno-array-bounds -Wno-stringop-overflow -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter  -DMODULE  -DKBUILD_BASENAME='"hello.mod"' -DKBUILD_MODNAME='"hello"' -D__KBUILD_MODNAME=kmod_hello -c -o hello.mod.o hello.mod.c   ; /home/minsepar/linux/tools/objtool/objtool --hacks=jump_label --hacks=noinstr --hacks=skylake --ibt --orc --retpoline --rethunk --static-call --uaccess --prefix=16  --link  --module hello.mod.o

source_hello.mod.o := hello.mod.c

deps_hello.mod.o := \
    $(wildcard include/config/MODULE_UNLOAD) \
  /home/minsepar/linux/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /home/minsepar/linux/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /home/minsepar/linux/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/CC_HAS_MULTIDIMENSIONAL_NONSTRING) \
    $(wildcard include/config/UBSAN_INTEGER_WRAP) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /home/minsepar/linux/include/linux/compiler_attributes.h \
  /home/minsepar/linux/include/linux/compiler-gcc.h \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
    $(wildcard include/config/CC_HAS_TYPEOF_UNQUAL) \
  /home/minsepar/linux/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/FTRACE_MCOUNT_RECORD) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/MITIGATION_ITS) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /home/minsepar/linux/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /home/minsepar/linux/include/linux/container_of.h \
  /home/minsepar/linux/include/linux/build_bug.h \
  /home/minsepar/linux/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
    $(wildcard include/config/CFI_CLANG) \
    $(wildcard include/config/64BIT) \
  /home/minsepar/linux/arch/x86/include/generated/asm/rwonce.h \
  /home/minsepar/linux/include/asm-generic/rwonce.h \
  /home/minsepar/linux/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /home/minsepar/linux/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /home/minsepar/linux/include/uapi/linux/types.h \
  /home/minsepar/linux/arch/x86/include/generated/uapi/asm/types.h \
  /home/minsepar/linux/include/uapi/asm-generic/types.h \
  /home/minsepar/linux/include/asm-generic/int-ll64.h \
  /home/minsepar/linux/include/uapi/asm-generic/int-ll64.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/bitsperlong.h \
  /home/minsepar/linux/include/asm-generic/bitsperlong.h \
  /home/minsepar/linux/include/uapi/asm-generic/bitsperlong.h \
  /home/minsepar/linux/include/uapi/linux/posix_types.h \
  /home/minsepar/linux/include/linux/stddef.h \
  /home/minsepar/linux/include/uapi/linux/stddef.h \
  /home/minsepar/linux/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/X86_32) \
  /home/minsepar/linux/arch/x86/include/uapi/asm/posix_types_64.h \
  /home/minsepar/linux/include/uapi/asm-generic/posix_types.h \
  /home/minsepar/linux/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /home/minsepar/linux/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /home/minsepar/linux/include/linux/const.h \
  /home/minsepar/linux/include/vdso/const.h \
  /home/minsepar/linux/include/uapi/linux/const.h \
  /home/minsepar/linux/arch/x86/include/asm/barrier.h \
  /home/minsepar/linux/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/CALL_THUNKS) \
    $(wildcard include/config/MITIGATION_RETHUNK) \
  /home/minsepar/linux/include/linux/stringify.h \
  /home/minsepar/linux/include/linux/objtool.h \
    $(wildcard include/config/FRAME_POINTER) \
    $(wildcard include/config/NOINSTR_VALIDATION) \
    $(wildcard include/config/MITIGATION_UNRET_ENTRY) \
    $(wildcard include/config/MITIGATION_SRSO) \
  /home/minsepar/linux/include/linux/objtool_types.h \
  /home/minsepar/linux/arch/x86/include/asm/asm.h \
  /home/minsepar/linux/arch/x86/include/asm/extable_fixup_types.h \
  /home/minsepar/linux/arch/x86/include/asm/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /home/minsepar/linux/include/linux/instrumentation.h \
  /home/minsepar/linux/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /home/minsepar/linux/include/linux/once_lite.h \
  /home/minsepar/linux/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /home/minsepar/linux/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
  /home/minsepar/linux/include/linux/stdarg.h \
  /home/minsepar/linux/include/linux/init.h \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /home/minsepar/linux/include/linux/kern_levels.h \
  /home/minsepar/linux/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /home/minsepar/linux/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/GENDWARFKSYMS) \
  /home/minsepar/linux/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/CALL_PADDING) \
    $(wildcard include/config/MITIGATION_SLS) \
    $(wildcard include/config/FUNCTION_PADDING_BYTES) \
    $(wildcard include/config/UML) \
  /home/minsepar/linux/arch/x86/include/asm/ibt.h \
    $(wildcard include/config/X86_KERNEL_IBT) \
    $(wildcard include/config/FINEIBT_BHI) \
  /home/minsepar/linux/include/linux/ratelimit_types.h \
  /home/minsepar/linux/include/linux/bits.h \
  /home/minsepar/linux/include/vdso/bits.h \
  /home/minsepar/linux/include/uapi/linux/bits.h \
  /home/minsepar/linux/include/uapi/linux/param.h \
  /home/minsepar/linux/arch/x86/include/generated/uapi/asm/param.h \
  /home/minsepar/linux/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /home/minsepar/linux/include/uapi/asm-generic/param.h \
  /home/minsepar/linux/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /home/minsepar/linux/arch/x86/include/asm/spinlock_types.h \
  /home/minsepar/linux/include/asm-generic/qspinlock_types.h \
    $(wildcard include/config/NR_CPUS) \
  /home/minsepar/linux/include/asm-generic/qrwlock_types.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/byteorder.h \
  /home/minsepar/linux/include/linux/byteorder/little_endian.h \
  /home/minsepar/linux/include/uapi/linux/byteorder/little_endian.h \
  /home/minsepar/linux/include/linux/swab.h \
  /home/minsepar/linux/include/uapi/linux/swab.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/swab.h \
  /home/minsepar/linux/include/linux/byteorder/generic.h \
  /home/minsepar/linux/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /home/minsepar/linux/arch/x86/include/asm/nops.h \
  /home/minsepar/linux/include/asm-generic/barrier.h \
  /home/minsepar/linux/include/linux/stat.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/stat.h \
  /home/minsepar/linux/include/uapi/linux/stat.h \
  /home/minsepar/linux/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /home/minsepar/linux/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /home/minsepar/linux/include/uapi/linux/kernel.h \
  /home/minsepar/linux/include/uapi/linux/sysinfo.h \
  /home/minsepar/linux/include/vdso/cache.h \
  /home/minsepar/linux/arch/x86/include/asm/cache.h \
    $(wildcard include/config/X86_L1_CACHE_SHIFT) \
    $(wildcard include/config/X86_INTERNODE_CACHE_SHIFT) \
    $(wildcard include/config/X86_VSMP) \
  /home/minsepar/linux/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /home/minsepar/linux/include/linux/math.h \
  /home/minsepar/linux/arch/x86/include/asm/div64.h \
  /home/minsepar/linux/include/asm-generic/div64.h \
    $(wildcard include/config/CC_OPTIMIZE_FOR_PERFORMANCE) \
  /home/minsepar/linux/include/vdso/math64.h \
  /home/minsepar/linux/include/linux/time64.h \
  /home/minsepar/linux/include/vdso/time64.h \
  /home/minsepar/linux/include/uapi/linux/time.h \
  /home/minsepar/linux/include/uapi/linux/time_types.h \
  /home/minsepar/linux/include/linux/time32.h \
  /home/minsepar/linux/include/linux/timex.h \
  /home/minsepar/linux/include/uapi/linux/timex.h \
  /home/minsepar/linux/arch/x86/include/asm/timex.h \
    $(wildcard include/config/X86_TSC) \
  /home/minsepar/linux/arch/x86/include/asm/processor.h \
    $(wildcard include/config/X86_VMX_FEATURE_NAMES) \
    $(wildcard include/config/X86_IOPL_IOPERM) \
    $(wildcard include/config/VM86) \
    $(wildcard include/config/X86_USER_SHADOW_STACK) \
    $(wildcard include/config/USE_X86_SEG_SUPPORT) \
    $(wildcard include/config/PARAVIRT_XXL) \
    $(wildcard include/config/CPU_SUP_AMD) \
    $(wildcard include/config/XEN) \
  /home/minsepar/linux/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/MITIGATION_PAGE_TABLE_ISOLATION) \
  /home/minsepar/linux/arch/x86/include/uapi/asm/processor-flags.h \
  /home/minsepar/linux/include/linux/mem_encrypt.h \
    $(wildcard include/config/ARCH_HAS_MEM_ENCRYPT) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /home/minsepar/linux/arch/x86/include/asm/mem_encrypt.h \
    $(wildcard include/config/X86_MEM_ENCRYPT) \
  /home/minsepar/linux/include/linux/cc_platform.h \
    $(wildcard include/config/ARCH_HAS_CC_PLATFORM) \
  /home/minsepar/linux/arch/x86/include/asm/math_emu.h \
  /home/minsepar/linux/arch/x86/include/asm/ptrace.h \
    $(wildcard include/config/PARAVIRT) \
    $(wildcard include/config/IA32_EMULATION) \
    $(wildcard include/config/X86_DEBUGCTLMSR) \
  /home/minsepar/linux/arch/x86/include/asm/segment.h \
    $(wildcard include/config/XEN_PV) \
  /home/minsepar/linux/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/PHYSICAL_START) \
    $(wildcard include/config/PHYSICAL_ALIGN) \
    $(wildcard include/config/DYNAMIC_PHYSICAL_MASK) \
  /home/minsepar/linux/include/vdso/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /home/minsepar/linux/arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/DYNAMIC_MEMORY_LAYOUT) \
    $(wildcard include/config/X86_5LEVEL) \
    $(wildcard include/config/RANDOMIZE_BASE) \
  /home/minsepar/linux/arch/x86/include/asm/kaslr.h \
    $(wildcard include/config/RANDOMIZE_MEMORY) \
  /home/minsepar/linux/arch/x86/include/uapi/asm/ptrace.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/ptrace-abi.h \
  /home/minsepar/linux/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/PGTABLE_LEVELS) \
    $(wildcard include/config/ZERO_CALL_USED_REGS) \
    $(wildcard include/config/PARAVIRT_DEBUG) \
  /home/minsepar/linux/arch/x86/include/asm/desc_defs.h \
  /home/minsepar/linux/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/X86_INTEL_MEMORY_PROTECTION_KEYS) \
    $(wildcard include/config/X86_PAE) \
    $(wildcard include/config/MEM_SOFT_DIRTY) \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
    $(wildcard include/config/PROC_FS) \
  /home/minsepar/linux/arch/x86/include/asm/pgtable_64_types.h \
    $(wildcard include/config/KMSAN) \
    $(wildcard include/config/DEBUG_KMAP_LOCAL_FORCE_MAP) \
  /home/minsepar/linux/arch/x86/include/asm/sparsemem.h \
    $(wildcard include/config/SPARSEMEM) \
  /home/minsepar/linux/arch/x86/include/asm/nospec-branch.h \
    $(wildcard include/config/CALL_THUNKS_DEBUG) \
    $(wildcard include/config/MITIGATION_CALL_DEPTH_TRACKING) \
    $(wildcard include/config/MITIGATION_IBPB_ENTRY) \
  /home/minsepar/linux/include/linux/static_key.h \
  /home/minsepar/linux/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /home/minsepar/linux/include/linux/cleanup.h \
  /home/minsepar/linux/arch/x86/include/asm/jump_label.h \
    $(wildcard include/config/HAVE_JUMP_LABEL_HACK) \
  /home/minsepar/linux/arch/x86/include/asm/cpufeatures.h \
  /home/minsepar/linux/arch/x86/include/asm/msr-index.h \
  /home/minsepar/linux/arch/x86/include/asm/unwind_hints.h \
  /home/minsepar/linux/arch/x86/include/asm/orc_types.h \
  /home/minsepar/linux/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/CC_HAS_NAMED_AS) \
  /home/minsepar/linux/include/linux/args.h \
  /home/minsepar/linux/include/asm-generic/percpu.h \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /home/minsepar/linux/include/linux/threads.h \
    $(wildcard include/config/BASE_SMALL) \
  /home/minsepar/linux/include/linux/percpu-defs.h \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
  /home/minsepar/linux/arch/x86/include/asm/asm-offsets.h \
  /home/minsepar/linux/include/generated/asm-offsets.h \
  /home/minsepar/linux/arch/x86/include/asm/GEN-for-each-reg.h \
  /home/minsepar/linux/arch/x86/include/asm/proto.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/ldt.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/sigcontext.h \
  /home/minsepar/linux/arch/x86/include/asm/current.h \
  /home/minsepar/linux/arch/x86/include/asm/cpuid.h \
  /home/minsepar/linux/arch/x86/include/asm/cpuid/api.h \
  /home/minsepar/linux/arch/x86/include/asm/cpuid/types.h \
  /home/minsepar/linux/arch/x86/include/asm/string.h \
  /home/minsepar/linux/arch/x86/include/asm/string_64.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
  /home/minsepar/linux/arch/x86/include/asm/page.h \
  /home/minsepar/linux/arch/x86/include/asm/page_64.h \
    $(wildcard include/config/DEBUG_VIRTUAL) \
    $(wildcard include/config/X86_VSYSCALL_EMULATION) \
  /home/minsepar/linux/include/linux/kmsan-checks.h \
  /home/minsepar/linux/include/linux/range.h \
  /home/minsepar/linux/include/asm-generic/memory_model.h \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
  /home/minsepar/linux/include/linux/pfn.h \
  /home/minsepar/linux/include/asm-generic/getorder.h \
  /home/minsepar/linux/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /home/minsepar/linux/include/linux/bitops.h \
  /home/minsepar/linux/include/linux/typecheck.h \
  /home/minsepar/linux/include/asm-generic/bitops/generic-non-atomic.h \
  /home/minsepar/linux/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/X86_CMOV) \
  /home/minsepar/linux/arch/x86/include/asm/rmwcc.h \
  /home/minsepar/linux/include/asm-generic/bitops/sched.h \
  /home/minsepar/linux/arch/x86/include/asm/arch_hweight.h \
  /home/minsepar/linux/include/asm-generic/bitops/const_hweight.h \
  /home/minsepar/linux/include/asm-generic/bitops/instrumented-atomic.h \
  /home/minsepar/linux/include/linux/instrumented.h \
  /home/minsepar/linux/include/asm-generic/bitops/instrumented-non-atomic.h \
    $(wildcard include/config/KCSAN_ASSUME_PLAIN_WRITES_ATOMIC) \
  /home/minsepar/linux/include/asm-generic/bitops/instrumented-lock.h \
  /home/minsepar/linux/include/asm-generic/bitops/le.h \
  /home/minsepar/linux/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/minsepar/linux/arch/x86/include/asm/special_insns.h \
  /home/minsepar/linux/include/linux/errno.h \
  /home/minsepar/linux/include/uapi/linux/errno.h \
  /home/minsepar/linux/arch/x86/include/generated/uapi/asm/errno.h \
  /home/minsepar/linux/include/uapi/asm-generic/errno.h \
  /home/minsepar/linux/include/uapi/asm-generic/errno-base.h \
  /home/minsepar/linux/include/linux/irqflags.h \
    $(wildcard include/config/PROVE_LOCKING) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /home/minsepar/linux/include/linux/irqflags_types.h \
  /home/minsepar/linux/arch/x86/include/asm/irqflags.h \
    $(wildcard include/config/DEBUG_ENTRY) \
  /home/minsepar/linux/arch/x86/include/asm/fpu/types.h \
  /home/minsepar/linux/arch/x86/include/asm/vmxfeatures.h \
  /home/minsepar/linux/arch/x86/include/asm/vdso/processor.h \
  /home/minsepar/linux/arch/x86/include/asm/shstk.h \
  /home/minsepar/linux/include/linux/personality.h \
  /home/minsepar/linux/include/uapi/linux/personality.h \
  /home/minsepar/linux/include/linux/err.h \
  /home/minsepar/linux/arch/x86/include/asm/tsc.h \
  /home/minsepar/linux/arch/x86/include/asm/cpufeature.h \
  /home/minsepar/linux/arch/x86/include/generated/asm/cpufeaturemasks.h \
  /home/minsepar/linux/arch/x86/include/asm/msr.h \
  /home/minsepar/linux/arch/x86/include/asm/cpumask.h \
  /home/minsepar/linux/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /home/minsepar/linux/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
    $(wildcard include/config/MMU) \
  /home/minsepar/linux/include/linux/align.h \
  /home/minsepar/linux/include/vdso/align.h \
  /home/minsepar/linux/include/linux/array_size.h \
  /home/minsepar/linux/include/linux/limits.h \
  /home/minsepar/linux/include/uapi/linux/limits.h \
  /home/minsepar/linux/include/vdso/limits.h \
  /home/minsepar/linux/include/linux/hex.h \
  /home/minsepar/linux/include/linux/kstrtox.h \
  /home/minsepar/linux/include/linux/minmax.h \
  /home/minsepar/linux/include/linux/sprintf.h \
  /home/minsepar/linux/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /home/minsepar/linux/include/linux/instruction_pointer.h \
  /home/minsepar/linux/include/linux/wordpart.h \
  /home/minsepar/linux/include/linux/bitmap.h \
  /home/minsepar/linux/include/linux/find.h \
  /home/minsepar/linux/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /home/minsepar/linux/include/linux/overflow.h \
  /home/minsepar/linux/include/uapi/linux/string.h \
  /home/minsepar/linux/include/linux/bitmap-str.h \
  /home/minsepar/linux/include/linux/cpumask_types.h \
  /home/minsepar/linux/include/linux/atomic.h \
  /home/minsepar/linux/arch/x86/include/asm/atomic.h \
  /home/minsepar/linux/arch/x86/include/asm/cmpxchg.h \
  /home/minsepar/linux/arch/x86/include/asm/cmpxchg_64.h \
  /home/minsepar/linux/arch/x86/include/asm/atomic64_64.h \
  /home/minsepar/linux/include/linux/atomic/atomic-arch-fallback.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
  /home/minsepar/linux/include/linux/atomic/atomic-long.h \
  /home/minsepar/linux/include/linux/atomic/atomic-instrumented.h \
  /home/minsepar/linux/include/linux/bug.h \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /home/minsepar/linux/include/linux/gfp_types.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
    $(wildcard include/config/SLAB_OBJ_EXT) \
  /home/minsepar/linux/include/linux/numa.h \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /home/minsepar/linux/include/linux/nodemask.h \
    $(wildcard include/config/HIGHMEM) \
  /home/minsepar/linux/include/linux/nodemask_types.h \
    $(wildcard include/config/NODES_SHIFT) \
  /home/minsepar/linux/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /home/minsepar/linux/include/uapi/linux/random.h \
  /home/minsepar/linux/include/uapi/linux/ioctl.h \
  /home/minsepar/linux/arch/x86/include/generated/uapi/asm/ioctl.h \
  /home/minsepar/linux/include/asm-generic/ioctl.h \
  /home/minsepar/linux/include/uapi/asm-generic/ioctl.h \
  /home/minsepar/linux/include/linux/irqnr.h \
  /home/minsepar/linux/include/uapi/linux/irqnr.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/msr.h \
  /home/minsepar/linux/arch/x86/include/asm/shared/msr.h \
  /home/minsepar/linux/include/linux/percpu.h \
    $(wildcard include/config/RANDOM_KMALLOC_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /home/minsepar/linux/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /home/minsepar/linux/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /home/minsepar/linux/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/PREEMPT_LAZY) \
  /home/minsepar/linux/arch/x86/include/asm/preempt.h \
  /home/minsepar/linux/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /home/minsepar/linux/include/linux/smp_types.h \
  /home/minsepar/linux/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /home/minsepar/linux/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/ARCH_HAS_PREEMPT_LAZY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/SH) \
  /home/minsepar/linux/include/linux/restart_block.h \
  /home/minsepar/linux/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/X86_FRED) \
    $(wildcard include/config/COMPAT) \
  /home/minsepar/linux/arch/x86/include/asm/smp.h \
    $(wildcard include/config/DEBUG_NMI_SELFTEST) \
  /home/minsepar/linux/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /home/minsepar/linux/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/X86_BUS_LOCK_DETECT) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DEBUG_MUTEXES) \
    $(wildcard include/config/DETECT_HUNG_TASK_BLOCKER) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/DEBUG_RSEQ) \
    $(wildcard include/config/SCHED_MM_CID) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/GCC_PLUGIN_STACKLEAK) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/USER_EVENTS) \
  /home/minsepar/linux/include/uapi/linux/sched.h \
  /home/minsepar/linux/include/linux/pid_types.h \
  /home/minsepar/linux/include/linux/sem_types.h \
  /home/minsepar/linux/include/linux/shm.h \
  /home/minsepar/linux/arch/x86/include/asm/shmparam.h \
  /home/minsepar/linux/include/linux/kmsan_types.h \
  /home/minsepar/linux/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
  /home/minsepar/linux/include/linux/osq_lock.h \
  /home/minsepar/linux/include/linux/spinlock_types.h \
  /home/minsepar/linux/include/linux/rwlock_types.h \
  /home/minsepar/linux/include/linux/plist_types.h \
  /home/minsepar/linux/include/linux/hrtimer_types.h \
  /home/minsepar/linux/include/linux/timerqueue_types.h \
  /home/minsepar/linux/include/linux/rbtree_types.h \
  /home/minsepar/linux/include/linux/timer_types.h \
  /home/minsepar/linux/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /home/minsepar/linux/include/linux/refcount_types.h \
  /home/minsepar/linux/include/linux/resource.h \
  /home/minsepar/linux/include/uapi/linux/resource.h \
  /home/minsepar/linux/arch/x86/include/generated/uapi/asm/resource.h \
  /home/minsepar/linux/include/asm-generic/resource.h \
  /home/minsepar/linux/include/uapi/asm-generic/resource.h \
  /home/minsepar/linux/include/linux/latencytop.h \
  /home/minsepar/linux/include/linux/sched/prio.h \
  /home/minsepar/linux/include/linux/sched/types.h \
  /home/minsepar/linux/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /home/minsepar/linux/include/uapi/linux/signal.h \
  /home/minsepar/linux/arch/x86/include/asm/signal.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/signal.h \
  /home/minsepar/linux/include/uapi/asm-generic/signal-defs.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/siginfo.h \
  /home/minsepar/linux/include/uapi/asm-generic/siginfo.h \
  /home/minsepar/linux/include/linux/syscall_user_dispatch_types.h \
  /home/minsepar/linux/include/linux/mm_types_task.h \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
  /home/minsepar/linux/arch/x86/include/asm/tlbbatch.h \
  /home/minsepar/linux/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_EGRESS) \
  /home/minsepar/linux/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /home/minsepar/linux/include/linux/posix-timers_types.h \
  /home/minsepar/linux/include/uapi/linux/rseq.h \
  /home/minsepar/linux/include/linux/seqlock_types.h \
  /home/minsepar/linux/include/linux/kcsan.h \
  /home/minsepar/linux/include/linux/rv.h \
    $(wildcard include/config/RV_REACTORS) \
  /home/minsepar/linux/include/linux/livepatch_sched.h \
  /home/minsepar/linux/include/linux/uidgid_types.h \
  /home/minsepar/linux/include/linux/tracepoint-defs.h \
  /home/minsepar/linux/arch/x86/include/generated/asm/kmap_size.h \
  /home/minsepar/linux/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /home/minsepar/linux/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /home/minsepar/linux/include/linux/spinlock.h \
  /home/minsepar/linux/include/linux/bottom_half.h \
  /home/minsepar/linux/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /home/minsepar/linux/arch/x86/include/generated/asm/mmiowb.h \
  /home/minsepar/linux/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /home/minsepar/linux/arch/x86/include/asm/spinlock.h \
  /home/minsepar/linux/arch/x86/include/asm/paravirt.h \
    $(wildcard include/config/PARAVIRT_SPINLOCKS) \
  /home/minsepar/linux/arch/x86/include/asm/frame.h \
  /home/minsepar/linux/arch/x86/include/asm/qspinlock.h \
  /home/minsepar/linux/include/asm-generic/qspinlock.h \
  /home/minsepar/linux/arch/x86/include/asm/qrwlock.h \
  /home/minsepar/linux/include/asm-generic/qrwlock.h \
  /home/minsepar/linux/include/linux/rwlock.h \
  /home/minsepar/linux/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/INLINE_SPIN_LOCK) \
    $(wildcard include/config/INLINE_SPIN_LOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK_BH) \
    $(wildcard include/config/UNINLINE_SPIN_UNLOCK) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/GENERIC_LOCKBREAK) \
  /home/minsepar/linux/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/INLINE_READ_LOCK) \
    $(wildcard include/config/INLINE_WRITE_LOCK) \
    $(wildcard include/config/INLINE_READ_LOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_LOCK_BH) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_READ_TRYLOCK) \
    $(wildcard include/config/INLINE_WRITE_TRYLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_BH) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQRESTORE) \
  /home/minsepar/linux/include/vdso/time32.h \
  /home/minsepar/linux/include/vdso/time.h \
  /home/minsepar/linux/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /home/minsepar/linux/include/linux/highuid.h \
  /home/minsepar/linux/include/linux/buildid.h \
    $(wildcard include/config/VMCORE_INFO) \
  /home/minsepar/linux/include/linux/kmod.h \
  /home/minsepar/linux/include/linux/umh.h \
  /home/minsepar/linux/include/linux/gfp.h \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /home/minsepar/linux/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP_PREINIT) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /home/minsepar/linux/include/linux/list_nulls.h \
  /home/minsepar/linux/include/linux/wait.h \
  /home/minsepar/linux/include/linux/seqlock.h \
  /home/minsepar/linux/include/linux/mutex.h \
  /home/minsepar/linux/include/linux/debug_locks.h \
  /home/minsepar/linux/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /home/minsepar/linux/include/linux/page-flags-layout.h \
  /home/minsepar/linux/include/generated/bounds.h \
  /home/minsepar/linux/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/HUGETLB_PMD_PAGE_TABLE_SHARING) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
    $(wildcard include/config/MM_ID) \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /home/minsepar/linux/include/linux/auxvec.h \
  /home/minsepar/linux/include/uapi/linux/auxvec.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/auxvec.h \
  /home/minsepar/linux/include/linux/kref.h \
  /home/minsepar/linux/include/linux/refcount.h \
  /home/minsepar/linux/include/linux/rbtree.h \
  /home/minsepar/linux/include/linux/rcupdate.h \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/KVM_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /home/minsepar/linux/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /home/minsepar/linux/include/linux/rcutree.h \
  /home/minsepar/linux/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /home/minsepar/linux/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /home/minsepar/linux/include/linux/completion.h \
  /home/minsepar/linux/include/linux/swait.h \
  /home/minsepar/linux/include/linux/uprobes.h \
  /home/minsepar/linux/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
  /home/minsepar/linux/include/linux/ktime.h \
  /home/minsepar/linux/include/linux/jiffies.h \
  /home/minsepar/linux/include/vdso/jiffies.h \
  /home/minsepar/linux/include/generated/timeconst.h \
  /home/minsepar/linux/include/vdso/ktime.h \
  /home/minsepar/linux/include/linux/timekeeping.h \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /home/minsepar/linux/include/linux/clocksource_ids.h \
  /home/minsepar/linux/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /home/minsepar/linux/arch/x86/include/asm/uprobes.h \
  /home/minsepar/linux/include/linux/notifier.h \
  /home/minsepar/linux/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /home/minsepar/linux/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /home/minsepar/linux/include/linux/workqueue_types.h \
  /home/minsepar/linux/include/linux/rcu_segcblist.h \
  /home/minsepar/linux/include/linux/srcutree.h \
  /home/minsepar/linux/include/linux/rcu_node_tree.h \
    $(wildcard include/config/RCU_FANOUT) \
    $(wildcard include/config/RCU_FANOUT_LEAF) \
  /home/minsepar/linux/include/linux/percpu_counter.h \
  /home/minsepar/linux/arch/x86/include/asm/mmu.h \
    $(wildcard include/config/MODIFY_LDT_SYSCALL) \
    $(wildcard include/config/ADDRESS_MASKING) \
    $(wildcard include/config/BROADCAST_TLB_FLUSH) \
  /home/minsepar/linux/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
  /home/minsepar/linux/include/linux/local_lock.h \
  /home/minsepar/linux/include/linux/local_lock_internal.h \
  /home/minsepar/linux/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /home/minsepar/linux/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /home/minsepar/linux/arch/x86/include/generated/asm/mmzone.h \
  /home/minsepar/linux/include/asm-generic/mmzone.h \
  /home/minsepar/linux/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /home/minsepar/linux/include/linux/arch_topology.h \
  /home/minsepar/linux/arch/x86/include/asm/topology.h \
    $(wildcard include/config/X86_LOCAL_APIC) \
    $(wildcard include/config/SCHED_MC_PRIO) \
  /home/minsepar/linux/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/EISA) \
    $(wildcard include/config/X86_MPPARSE) \
  /home/minsepar/linux/arch/x86/include/asm/mpspec_def.h \
  /home/minsepar/linux/arch/x86/include/asm/x86_init.h \
  /home/minsepar/linux/arch/x86/include/asm/apicdef.h \
  /home/minsepar/linux/include/asm-generic/topology.h \
  /home/minsepar/linux/include/linux/cpu_smt.h \
    $(wildcard include/config/HOTPLUG_SMT) \
  /home/minsepar/linux/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /home/minsepar/linux/include/uapi/linux/sysctl.h \
  /home/minsepar/linux/include/linux/elf.h \
    $(wildcard include/config/ARCH_HAVE_EXTRA_ELF_NOTES) \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /home/minsepar/linux/arch/x86/include/asm/elf.h \
    $(wildcard include/config/X86_X32_ABI) \
  /home/minsepar/linux/arch/x86/include/asm/ia32.h \
  /home/minsepar/linux/include/linux/compat.h \
    $(wildcard include/config/ARCH_HAS_SYSCALL_WRAPPER) \
    $(wildcard include/config/COMPAT_OLD_SIGACTION) \
    $(wildcard include/config/HARDENED_USERCOPY) \
    $(wildcard include/config/ODD_RT_SIGACTION) \
  /home/minsepar/linux/include/linux/sem.h \
  /home/minsepar/linux/include/uapi/linux/sem.h \
  /home/minsepar/linux/include/linux/ipc.h \
  /home/minsepar/linux/include/linux/rhashtable-types.h \
  /home/minsepar/linux/include/uapi/linux/ipc.h \
  /home/minsepar/linux/arch/x86/include/generated/uapi/asm/ipcbuf.h \
  /home/minsepar/linux/include/uapi/asm-generic/ipcbuf.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/sembuf.h \
  /home/minsepar/linux/include/linux/socket.h \
  /home/minsepar/linux/arch/x86/include/generated/uapi/asm/socket.h \
  /home/minsepar/linux/include/uapi/asm-generic/socket.h \
  /home/minsepar/linux/arch/x86/include/generated/uapi/asm/sockios.h \
  /home/minsepar/linux/include/uapi/asm-generic/sockios.h \
  /home/minsepar/linux/include/uapi/linux/sockios.h \
  /home/minsepar/linux/include/linux/uio.h \
    $(wildcard include/config/ARCH_HAS_COPY_MC) \
  /home/minsepar/linux/include/linux/ucopysize.h \
    $(wildcard include/config/HARDENED_USERCOPY_DEFAULT_ON) \
  /home/minsepar/linux/include/uapi/linux/uio.h \
  /home/minsepar/linux/include/uapi/linux/socket.h \
  /home/minsepar/linux/include/uapi/linux/if.h \
  /home/minsepar/linux/include/uapi/linux/libc-compat.h \
  /home/minsepar/linux/include/uapi/linux/hdlc/ioctl.h \
  /home/minsepar/linux/include/linux/fs.h \
    $(wildcard include/config/FANOTIFY_ACCESS_PERMISSIONS) \
    $(wildcard include/config/READ_ONLY_THP_FOR_FS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/UNICODE) \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_DAX) \
    $(wildcard include/config/BLOCK) \
  /home/minsepar/linux/include/linux/vfsdebug.h \
    $(wildcard include/config/DEBUG_VFS) \
  /home/minsepar/linux/include/linux/wait_bit.h \
  /home/minsepar/linux/include/linux/kdev_t.h \
  /home/minsepar/linux/include/uapi/linux/kdev_t.h \
  /home/minsepar/linux/include/linux/dcache.h \
  /home/minsepar/linux/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /home/minsepar/linux/include/linux/rculist_bl.h \
  /home/minsepar/linux/include/linux/list_bl.h \
  /home/minsepar/linux/include/linux/bit_spinlock.h \
  /home/minsepar/linux/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /home/minsepar/linux/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /home/minsepar/linux/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /home/minsepar/linux/include/linux/path.h \
  /home/minsepar/linux/include/linux/list_lru.h \
  /home/minsepar/linux/include/linux/shrinker.h \
    $(wildcard include/config/SHRINKER_DEBUG) \
  /home/minsepar/linux/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /home/minsepar/linux/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
  /home/minsepar/linux/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /home/minsepar/linux/arch/x86/include/asm/sync_core.h \
  /home/minsepar/linux/include/linux/sched/coredump.h \
  /home/minsepar/linux/include/linux/radix-tree.h \
  /home/minsepar/linux/include/linux/pid.h \
  /home/minsepar/linux/include/linux/capability.h \
  /home/minsepar/linux/include/uapi/linux/capability.h \
  /home/minsepar/linux/include/linux/semaphore.h \
  /home/minsepar/linux/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /home/minsepar/linux/include/uapi/linux/fcntl.h \
  /home/minsepar/linux/arch/x86/include/generated/uapi/asm/fcntl.h \
  /home/minsepar/linux/include/uapi/asm-generic/fcntl.h \
  /home/minsepar/linux/include/uapi/linux/openat2.h \
  /home/minsepar/linux/include/linux/migrate_mode.h \
  /home/minsepar/linux/include/linux/percpu-rwsem.h \
  /home/minsepar/linux/include/linux/rcuwait.h \
  /home/minsepar/linux/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
    $(wildcard include/config/STACK_GROWSUP) \
  /home/minsepar/linux/include/linux/signal.h \
    $(wildcard include/config/DYNAMIC_SIGFRAME) \
  /home/minsepar/linux/include/linux/sched/jobctl.h \
  /home/minsepar/linux/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /home/minsepar/linux/include/linux/uaccess.h \
    $(wildcard include/config/ARCH_HAS_SUBPAGE_FAULTS) \
  /home/minsepar/linux/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /home/minsepar/linux/include/linux/nospec.h \
  /home/minsepar/linux/arch/x86/include/asm/uaccess.h \
    $(wildcard include/config/CC_HAS_ASM_GOTO_OUTPUT) \
    $(wildcard include/config/CC_HAS_ASM_GOTO_TIED_OUTPUT) \
    $(wildcard include/config/X86_INTEL_USERCOPY) \
  /home/minsepar/linux/include/linux/mmap_lock.h \
  /home/minsepar/linux/arch/x86/include/asm/smap.h \
  /home/minsepar/linux/arch/x86/include/asm/extable.h \
    $(wildcard include/config/BPF_JIT) \
  /home/minsepar/linux/arch/x86/include/asm/tlbflush.h \
  /home/minsepar/linux/include/linux/mmu_notifier.h \
  /home/minsepar/linux/include/linux/interval_tree.h \
  /home/minsepar/linux/arch/x86/include/asm/invpcid.h \
  /home/minsepar/linux/arch/x86/include/asm/pti.h \
  /home/minsepar/linux/arch/x86/include/asm/pgtable.h \
    $(wildcard include/config/DEBUG_WX) \
    $(wildcard include/config/HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) \
    $(wildcard include/config/ARCH_HAS_PTE_DEVMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PMD_PFNMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PUD_PFNMAP) \
    $(wildcard include/config/HAVE_ARCH_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_ENABLE_THP_MIGRATION) \
    $(wildcard include/config/PAGE_TABLE_CHECK) \
    $(wildcard include/config/X86_SGX) \
  /home/minsepar/linux/arch/x86/include/asm/pkru.h \
  /home/minsepar/linux/arch/x86/include/asm/fpu/api.h \
    $(wildcard include/config/X86_DEBUG_FPU) \
    $(wildcard include/config/MATH_EMULATION) \
  /home/minsepar/linux/arch/x86/include/asm/coco.h \
  /home/minsepar/linux/include/asm-generic/pgtable_uffd.h \
  /home/minsepar/linux/include/linux/page_table_check.h \
  /home/minsepar/linux/arch/x86/include/asm/pgtable_64.h \
  /home/minsepar/linux/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/PROVIDE_OHCI1394_DMA_INIT) \
    $(wildcard include/config/X86_IO_APIC) \
    $(wildcard include/config/PCI_MMCONFIG) \
    $(wildcard include/config/ACPI_APEI_GHES) \
    $(wildcard include/config/INTEL_TXT) \
  /home/minsepar/linux/arch/x86/include/uapi/asm/vsyscall.h \
  /home/minsepar/linux/include/asm-generic/fixmap.h \
  /home/minsepar/linux/arch/x86/include/asm/pgtable-invert.h \
  /home/minsepar/linux/arch/x86/include/asm/uaccess_64.h \
  /home/minsepar/linux/arch/x86/include/asm/runtime-const.h \
  /home/minsepar/linux/include/asm-generic/access_ok.h \
    $(wildcard include/config/ALTERNATE_USER_ADDRESS_SPACE) \
  /home/minsepar/linux/include/linux/cred.h \
  /home/minsepar/linux/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /home/minsepar/linux/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /home/minsepar/linux/include/linux/sched/user.h \
    $(wildcard include/config/VFIO_PCI_ZDEV_KVM) \
    $(wildcard include/config/IOMMUFD) \
    $(wildcard include/config/WATCH_QUEUE) \
  /home/minsepar/linux/include/linux/ratelimit.h \
  /home/minsepar/linux/include/linux/posix-timers.h \
  /home/minsepar/linux/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /home/minsepar/linux/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /home/minsepar/linux/include/linux/hrtimer_defs.h \
  /home/minsepar/linux/include/linux/timerqueue.h \
  /home/minsepar/linux/include/linux/rcuref.h \
  /home/minsepar/linux/include/linux/rcu_sync.h \
  /home/minsepar/linux/include/linux/delayed_call.h \
  /home/minsepar/linux/include/linux/uuid.h \
  /home/minsepar/linux/include/linux/errseq.h \
  /home/minsepar/linux/include/linux/ioprio.h \
  /home/minsepar/linux/include/linux/sched/rt.h \
  /home/minsepar/linux/include/linux/iocontext.h \
    $(wildcard include/config/BLK_ICQ) \
  /home/minsepar/linux/include/uapi/linux/ioprio.h \
  /home/minsepar/linux/include/linux/fs_types.h \
  /home/minsepar/linux/include/linux/mount.h \
  /home/minsepar/linux/include/linux/mnt_idmapping.h \
  /home/minsepar/linux/include/linux/slab.h \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/KFENCE) \
    $(wildcard include/config/SLUB_TINY) \
    $(wildcard include/config/SLUB_DEBUG) \
    $(wildcard include/config/SLAB_BUCKETS) \
    $(wildcard include/config/KVFREE_RCU_BATCHED) \
  /home/minsepar/linux/include/linux/percpu-refcount.h \
  /home/minsepar/linux/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
  /home/minsepar/linux/include/linux/kasan-enabled.h \
  /home/minsepar/linux/include/linux/kasan-tags.h \
  /home/minsepar/linux/include/linux/rw_hint.h \
  /home/minsepar/linux/include/linux/file_ref.h \
  /home/minsepar/linux/include/linux/unicode.h \
  /home/minsepar/linux/include/uapi/linux/fs.h \
  /home/minsepar/linux/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /home/minsepar/linux/include/uapi/linux/dqblk_xfs.h \
  /home/minsepar/linux/include/linux/dqblk_v1.h \
  /home/minsepar/linux/include/linux/dqblk_v2.h \
  /home/minsepar/linux/include/linux/dqblk_qtree.h \
  /home/minsepar/linux/include/linux/projid.h \
  /home/minsepar/linux/include/uapi/linux/quota.h \
  /home/minsepar/linux/include/uapi/linux/aio_abi.h \
  /home/minsepar/linux/include/uapi/linux/unistd.h \
  /home/minsepar/linux/arch/x86/include/asm/unistd.h \
  /home/minsepar/linux/arch/x86/include/uapi/asm/unistd.h \
  /home/minsepar/linux/arch/x86/include/generated/uapi/asm/unistd_64.h \
  /home/minsepar/linux/arch/x86/include/generated/asm/unistd_64_x32.h \
  /home/minsepar/linux/arch/x86/include/generated/asm/unistd_32_ia32.h \
  /home/minsepar/linux/arch/x86/include/asm/compat.h \
  /home/minsepar/linux/include/linux/sched/task_stack.h \
    $(wildcard include/config/DEBUG_STACK_USAGE) \
  /home/minsepar/linux/include/uapi/linux/magic.h \
  /home/minsepar/linux/arch/x86/include/asm/user32.h \
  /home/minsepar/linux/include/asm-generic/compat.h \
    $(wildcard include/config/COMPAT_FOR_U64_ALIGNMENT) \
  /home/minsepar/linux/arch/x86/include/asm/syscall_wrapper.h \
  /home/minsepar/linux/arch/x86/include/asm/user.h \
  /home/minsepar/linux/arch/x86/include/asm/user_64.h \
  /home/minsepar/linux/arch/x86/include/asm/fsgsbase.h \
  /home/minsepar/linux/arch/x86/include/asm/vdso.h \
  /home/minsepar/linux/include/uapi/linux/elf.h \
  /home/minsepar/linux/include/uapi/linux/elf-em.h \
  /home/minsepar/linux/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /home/minsepar/linux/include/linux/sysfs.h \
  /home/minsepar/linux/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /home/minsepar/linux/include/linux/idr.h \
  /home/minsepar/linux/include/linux/kobject_ns.h \
  /home/minsepar/linux/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/PPC64) \
  /home/minsepar/linux/include/linux/rbtree_latch.h \
  /home/minsepar/linux/include/linux/error-injection.h \
  /home/minsepar/linux/include/asm-generic/error-injection.h \
  /home/minsepar/linux/include/linux/dynamic_debug.h \
  /home/minsepar/linux/arch/x86/include/asm/module.h \
    $(wildcard include/config/UNWINDER_ORC) \
  /home/minsepar/linux/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
  /home/minsepar/linux/include/linux/export-internal.h \
    $(wildcard include/config/PARISC) \

hello.mod.o: $(deps_hello.mod.o)

$(deps_hello.mod.o):

hello.mod.o: $(wildcard /home/minsepar/linux/tools/objtool/objtool)
