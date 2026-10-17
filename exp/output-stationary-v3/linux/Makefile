# URSA v3 Linux driver (Zynq-7000), built as libmxm.so.1 (common API: mxm.h).
#
#   make                      cross-compile build/sa8/libmxm.so* and test_mxm
#   make SA=16                build/sa16/libmxm.so*  (one directory per array size)
#   make all-sa               all four array sizes
#   make CROSS=               build natively on the board
#   make sim [SA=..]          host build/sim-saN/libmxm.so* (software model) + test_mxm_sim
#   make install [PREFIX=/usr/local] [DESTDIR=..]   lib + headers
#   make bin [BIT=../bitstreams/x.bit]   .bit -> .bit.bin beside it (default: all *_bram.bit)
#
# Applications include mxm.h and link with -lmxm. They are not tied to SA or
# to this build: point them at another libmxm.so.1 (LD_LIBRARY_PATH, or
# replace the installed file) and they run with it, no rebuild.
#   sudo LD_LIBRARY_PATH=build/sa16 ./test_mxm ../bitstreams/ursa_vanilla_16x16_acc20_bram.bit.bin 100

CROSS   ?= arm-linux-gnueabihf-
# make predefines CC=cc, so ?= would never apply
ifeq ($(origin CC),default)
CC      := $(CROSS)gcc
endif
HOSTCC  ?= gcc
SA      ?= 8
PREFIX  ?= /usr/local

LAYOUT  := ../vitis_component/mxm-ursa/src
CFLAGS  ?= -O2
override CFLAGS += -std=c99 -Wall -Wextra -I. -I$(LAYOUT)
LIBFLAGS := -DSA_SIZE=$(SA) -fPIC -fvisibility=hidden

SONAME  := libmxm.so.1
REAL    := libmxm.so.1.0.0
LIBSRC  := ursa_linux.c mxm_ursa.c
LIBDEP  := $(LIBSRC) ursa_linux.h mxm.h $(LAYOUT)/ursa_v3_layout.h

BUILD   := build/sa$(SA)
SIMDIR  := build/sim-sa$(SA)

.PHONY: all lib all-sa sim install bin clean
all: lib test_mxm

lib: $(BUILD)/$(REAL)

$(BUILD)/$(REAL): $(LIBDEP)
	@mkdir -p $(BUILD)
	$(CC) $(CFLAGS) $(LIBFLAGS) -shared -Wl,-soname,$(SONAME) $(LIBSRC) -o $@
	ln -sf $(REAL) $(BUILD)/$(SONAME)
	ln -sf $(SONAME) $(BUILD)/libmxm.so

# Linked against whichever libmxm.so it finds first; it only needs the soname.
test_mxm: test_mxm.c mxm.h $(BUILD)/$(REAL)
	$(CC) $(CFLAGS) $< -L$(BUILD) -lmxm -o $@

all-sa:
	for s in 2 4 8 16; do $(MAKE) lib SA=$$s || exit 1; done
	$(MAKE) test_mxm

sim: $(SIMDIR)/$(REAL) test_mxm_sim

$(SIMDIR)/$(REAL): $(LIBDEP)
	@mkdir -p $(SIMDIR)
	$(HOSTCC) $(CFLAGS) $(LIBFLAGS) -DURSA_SIM -shared -Wl,-soname,$(SONAME) $(LIBSRC) -o $@
	ln -sf $(REAL) $(SIMDIR)/$(SONAME)
	ln -sf $(SONAME) $(SIMDIR)/libmxm.so

test_mxm_sim: test_mxm.c mxm.h $(SIMDIR)/$(REAL)
	$(HOSTCC) $(CFLAGS) $< -L$(SIMDIR) -lmxm -o $@

install: $(BUILD)/$(REAL)
	install -d $(DESTDIR)$(PREFIX)/lib $(DESTDIR)$(PREFIX)/include
	install -m 755 $(BUILD)/$(REAL) $(DESTDIR)$(PREFIX)/lib/
	ln -sf $(REAL)   $(DESTDIR)$(PREFIX)/lib/$(SONAME)
	ln -sf $(SONAME) $(DESTDIR)$(PREFIX)/lib/libmxm.so
	install -m 644 mxm.h ursa_linux.h $(DESTDIR)$(PREFIX)/include/
	-[ -z "$(DESTDIR)" ] && ldconfig

bin:
	./bit2bin.sh $(BIT)

clean:
	rm -rf build dist *.o test_mxm test_mxm_sim
