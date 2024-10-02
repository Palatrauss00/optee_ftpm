
WOLF_SSL_FLAGS = -DSINGLE_THREADED	\
			-DNO_WOLFSSL_CLIENT	\
			-DNO_WOLFSSL_SERVER	\
			-DOPENSSL_EXTRA		\
			-DNO_FILESYSTEM		\
			-DWOLFSSL_USER_SETTINGS	\
			-DTIME_OVERRIDES	\
			-DSTRING_USER		\
			-DCTYPE_USER		\
			-DCERTIFYX509_DEBUG=NO

#
# wolfssl/wolfcrypt has multiple unused functions, unfortunately the OPTEE build system can only turn off compiler flags for
# files in the same directory as the sub.mk file. It is not possible to place sub.mk files in the git submodules without
# creating a new fork of each submodule repo. To avoid spurious warnings these warnings are disabled here globally.
#


WOLF_WARNING_SUPPRESS = -Wno-unused-function

cflags-y += $(WOLF_SSL_FLAGS) $(WOLF_WARNING_SUPPRESS)

$(info cflags-y: $(cflags-y))


global-incdirs-y += wolfssl
global-incdirs-y += wolfssl/wolfssl/wolfcrypt

srcs-y += wolfssl/wolfcrypt/src/aes.c
srcs-y += wolfssl/wolfcrypt/src/asn.c
srcs-y += wolfssl/wolfcrypt/src/ecc.c
srcs-y += wolfssl/wolfcrypt/src/integer.c
srcs-y += wolfssl/wolfcrypt/src/memory.c
srcs-y += wolfssl/wolfcrypt/src/sha.c
srcs-y += wolfssl/wolfcrypt/src/sha256.c
srcs-y += wolfssl/wolfcrypt/src/sha512.c
srcs-y += wolfssl/wolfcrypt/src/tfm.c
srcs-y += wolfssl/wolfcrypt/src/wolfmath.c
srcs-y += wolfssl/wolfcrypt/src/des3.c
srcs-y += wolfssl/wolfcrypt/src/random.c
