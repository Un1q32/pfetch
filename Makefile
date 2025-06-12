PREFIX ?= /usr/local

all:
	@echo RUN \'make install\' to install pfetch

check:
	@shellcheck pfetch

install:
	@install -Dm755 pfetch $(DESTDIR)$(PREFIX)/bin/pfetch
	@install -Dm644 pfetch.1 $(DESTDIR)$(PREFIX)/share/man/man1/pfetch.1 

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/pfetch
	@rm -f $(DESTDIR)$(PREFIX)/share/man/man1/pfetch.1
