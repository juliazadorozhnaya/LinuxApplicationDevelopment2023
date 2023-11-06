AM_CFLAGS = -Wall -O0
bin_PROGRAMS = rhasher
rhasher_SOURCES = rhasher.c

TESTS = test_no_alg_name.sh test_no_msg.sh test_unknown_hash_name.sh test_no_file.sh \
        test_md5_base64.sh test_md5_hex.sh test_md5_file.sh \
        test_sha1_base64.sh test_sha1_hex.sh test_sha1_file.sh \
        test_tth_base64.sh test_tth_hex.sh test_tth_file.sh

EXTRA_DIST = $(TESTS)

rhasher_LDADD = -lrhash

check_PROGRAMS = $(TESTS:.sh=)

CLEANFILES = $(check_PROGRAMS)

$(check_PROGRAMS): %: %.sh
    cp $< $@

test: rhasher
    echo 'SHA1 rhasher.c' | ./rhasher | cut -d ' ' -f 2 | sha1sum -c
    echo 'MD5 rhasher.c' | ./rhasher | cut -d ' ' -f 2 | md5sum -c

gitclean:
	git clean -df