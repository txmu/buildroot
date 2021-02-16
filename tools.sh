#!/usr/bin/zsh

mkdir -p /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/etc/meson                       sed -e 's%@TARGET_CROSS@%/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/bin/arm64-buildroot-linux-musl-%g' -e 's%@TARGET_ARCH@%x86%g' -e 's%@TARGET_CPU@%%g' -e 's%@TARGET_ENDIAN@%little%g' -e "s%@TARGET_CFLAGS@%'-D_LARGEFILE_SOURCE', '-D_LARGEFILE64_SOURCE', '-D_FILE_OFFSET_BITS=64', '-Os', '-g2'@PKG_TARGET_CFLAGS@%g" -e "s%@TARGET_LDFLAGS@%@PKG_TARGET_CFLAGS@%g" -e "s%@TARGET_CXXFLAGS@%'-D_LARGEFILE_SOURCE', '-D_LARGEFILE64_SOURCE', '-D_FILE_OFFSET_BITS=64', '-Os', '-g2'@PKG_TARGET_CFLAGS@%g" -e 's%@HOST_DIR@%/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host%g' -e 's%@STAGING_DIR@%/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/arm64-buildroot-linux-musl/sysroot%g' -e 's%@STATIC@%false%g' package/meson//cross-compilation.conf.in > /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/etc/meson/cross-compilation.conf.in                                                                        sed -e 's%@PKG_TARGET_CFLAGS@%%g' -e 's%@PKG_TARGET_LDFLAGS@%%g' -e 's%@PKG_TARGET_CXXFLAGS@%%g' /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/etc/meson/cross-compilation.conf.in > /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/etc/meson/cross-compilation.conf                       grep -qsE '^/bin/bash$' /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells || echo "/bin/bash" >> /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells          if grep -q CONFIG_ASH=y /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/build/busybox-1.33.0/.config; then grep -qsE '^/bin/ash$' /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells || echo "/bin/ash" >> /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells; fi                                                                                                       if grep -q CONFIG_HUSH=y /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/build/busybox-1.33.0/.config; then grep -qsE '^/bin/hush$' /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells || echo "/bin/hush" >> /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells; fi                                                                                                    grep -qsE '^/bin/dash$' /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells || echo "/bin/dash" >> /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells         
rm -rf /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/lua/5.3/doc           
rm -rf /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/luarocks                rm -f -r /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/openrc              { echo "baud=\"0\""; echo "term_type=\"vt100\"" ; echo "agetty_options=\"-L \""; } > /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/conf.d/agetty.console                                                                                                                                                              ln -sf agetty /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/init.d/agetty.consoleln -sf /etc/init.d/agetty.console /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/runlevels/default/agetty.console                                                                             ln: failed to create symbolic link '/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/runlevels/default/agetty.console': No such file or directory                                                                                           rm -rf /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/perl5/5.32.1/pod        
rm -rf /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/perl5/5.32.1/arm64-linux/CORE                                                                                                       find /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/perl5/ -name 'extralibs.ld' -print0 | xargs -0 rm -f                                                                                  find: ‘/data/data/com.termux/files/home/                                                                                              find /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/perl5/ -name '*.bs' -print0 | xargs -0 rm -f                                                                                          find: ‘/data/data/com.termux/files/home/                                                                                                find /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/perl5/ -name '.packlist' -print0 | xargs -0 rm -f                                                                                     find: ‘/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/perl5/’: No such file or directory                                                                                                  mkdir -p /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc                           echo "Turx Linux" > /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/hostname       /data/data/com.termux/files/usr/bin/sed -i -e '$a \127.0.1.1\tTurx Linux Turx' -e '/^127.0.1.1/d' /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/hosts                                                                                                                                 mkdir -p /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc                           echo "Welcome to Turx Linux!" > /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/issue                                                                                                          /data/data/com.termux/files/usr/bin/sed -i -e s,^root:[^:]*:,root::, /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shadow                                                                    /data/data/com.termux/files/usr/bin/sed: can't read /data/data/com.termux/files/home/                                            grep -qsE '^/bin/sh$' /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells || echo "/bin/sh" >> /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells              grep -qsE '^/bin/zsh$' /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells || echo "/bin/zsh" >> /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/shells            if test -d /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/lib/modules/`MAKEFLAGS='i --no-print-directory' /data/data/com.termux/files/usr/bin/make -j2 HOSTCC="/data/data/com.termux/files/usr/bin/gcc -O2 -I/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/include -L/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/lib -Wl,-rpath,/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/lib" ARCH=arm INSTALL_MOD_PATH=/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target CROSS_COMPILE="/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/bin/arm64-buildroot-linux-musl-" DEPMOD=/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/sbin/depmod INSTALL_MOD_STRIP=1 -C /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/build/linux-5.10.13 --no-print-directory -s kernelrelease 2>/dev/null` && grep -q "CONFIG_MODULES=y" /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/build/linux-5.10.13/.config; then /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/sbin/depmod -a -b /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target `MAKEFLAGS='i --no-print-directory' /data/data/com.termux/files/usr/bin/make -j2 HOSTCC="/data/data/com.termux/files/usr/bin/gcc -O2 -I/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/include -L/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/lib -Wl,-rpath,/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/lib" ARCH=arm INSTALL_MOD_PATH=/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target CROSS_COMPILE="/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/bin/arm64-buildroot-linux-musl-" DEPMOD=/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/sbin/depmod INSTALL_MOD_STRIP=1 -C /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/build/linux-5.10.13 --no-print-directory -s kernelrelease 2>/dev/null`; fi                                         printf '%s\n' C en_US locale-archive > /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/build/locales.nopurge                                                                                              for dir in /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/locale /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/X11/locale /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/locale; do if [ ! -d $dir ]; then continue; fi; for langdir in $dir/*; do if [ -e "${langdir}" ]; then grep -qx "${langdir##*/}" /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/build/locales.nopurge || rm -rf $langdir; fi done; done                              if [ -d /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/X11/locale ]; then for lang in C en_US; do if [ -f /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/X11/locale/$lang/XLC_LOCALE ]; then echo "$lang/XLC_LOCALE: $lang"; fi done > /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/X11/locale/locale.dir; fi                                 rm -rf /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/include /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/aclocal \                                                /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/pkgconfig /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/pkgconfig \                                       /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/cmake /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/cmake \                                               /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/doc                        find /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/{lib,share}/ -name '*.cmake' -print0 | xargs -0 rm -f                                                                                     find: ‘/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/{lib,share}/’: No such file or directory                                                                                                find /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/lib/ /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/ /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/libexec/ \                                                                                            \( -name '*.a' -o -name '*.la' -o -name '*.prl' \) -print0 | xargs -0 rm -f                         rm -rf /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/gdb                   rm -rf /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/man /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/man                                                  rm -rf /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/info /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/info                                                rm -rf /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/doc /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/doc                                                  rm -rf /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share/gtk-doc               rmdir /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/share 2>/dev/null || true    rm -rf /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/lib/debug /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/debug                                                find /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target   -type f \( -perm /111 -o -name '*.so*' \) -not \( -name 'libpthread*.so*' -o -name 'ld-*.so*' -o -name '*.ko' \) -print0 | xargs -0 /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/bin/arm64-buildroot-linux-musl-strip --remove-section=.comment --remove-section=.note 2>/dev/null || true                                                    find /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target   \( -name 'ld-*.so*' -o -name 'libpthread*.so*' \) -print0 | xargs -0 -r /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/host/bin/arm64-buildroot-linux-musl-strip --remove-section=.comment --remove-section=.note --strip-debug 2>/dev/null || true                                                                                                  test -f /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/ld.so.conf && \                    { echo "ERROR: we shouldn't have a /etc/ld.so.conf file"; exit 1; } || true                         test -d /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc/ld.so.conf.d && \                  { echo "ERROR: we shouldn't have a /etc/ld.so.conf.d directory"; exit 1; } || true                  mkdir -p /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc                           ( \                                                                                                                 echo "NAME=Buildroot"; \                                                                                    echo "VERSION=-g2a8dcb5-dirty"; \                                                                           echo "ID=buildroot"; \                                                                                      echo "VERSION_ID=2021.02-rc1"; \                                                                            echo "PRETTY_NAME=\"Buildroot 2021.02-rc1\"" \                                                      ) >  /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/usr/lib/os-release                ln -sf ../usr/lib/os-release /data/data/com.termux/files/home/buildroot-2021.02-rc1/output/target/etc
PER_PACKAGE_DIR=/data/data/com.termux/files/home/buildroot-2021.02-rc1/output/per-package /data/data/com.termux/files/home/buildroot-2021.02-rc1/support/scripts/fix-rpath target
